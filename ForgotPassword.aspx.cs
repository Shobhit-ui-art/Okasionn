using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class ForgotPassword : System.Web.UI.Page
{
    string sql;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OkasionDb"].ConnectionString);
        con.Open();
        sql = "Select * from tblUsers where Email=@email";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Close();

        if (dt.Rows.Count != 0)
        {
            con.Open();
            string myGUID = Guid.NewGuid().ToString();
            int Uid = Convert.ToInt32(dt.Rows[0][0]);
            sql = "Insert into Forgotpass(Id,Uid,RequestDateTime) values('" + myGUID + "'," + Uid + ",GETDATE())";
            SqlCommand cmd1 = new SqlCommand(sql, con);
            cmd1.ExecuteNonQuery();

            // Send Reset Link via Email
            string toemail = dt.Rows[0][3].ToString();
            string username= dt.Rows[0][1].ToString();
            string emailbody = "Hi, " + username + ",<br/><br/>Click the link below to reset your Password<br/><br>";
            MailMessage passmail = new MailMessage("okasion.eventplanner2021@gmail.com",toemail);
            passmail.Body = emailbody;
            passmail.IsBodyHtml = true;
            passmail.Subject = "Reset Password";
            SmtpClient smtp = new SmtpClient("smtp.gmail.com",587);
            smtp.Credentials = new NetworkCredential()
            {
                UserName = "okasion.eventplanner2021@gmail.com",
                Password="okasion6789"

            };
            smtp.EnableSsl = true;
            smtp.Send(passmail);
            
       


            lblmsg.Text = "Reset Link sent ! Check your email for Reset Passowrd.";
            lblmsg.ForeColor = System.Drawing.Color.Green;
            txtemail.Text=String.Empty;
            con.Close();
        }
        else
        {
            lblmsg.Text = "OOPs! This email doesn't exist ... Try again.";
            lblmsg.ForeColor = System.Drawing.Color.Red;
            txtemail.Text = String.Empty;
            txtemail.Focus();
        }


    }
}