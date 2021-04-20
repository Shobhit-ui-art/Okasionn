using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class signin : System.Web.UI.Page
{
    string sql;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Request.Cookies["Username"]!=null && Request.Cookies["Userpass"]!=null)
            {
                uname.Text= Request.Cookies["Username"].Value;
                pass.Text= Request.Cookies["Userpass"].Value;
                CheckBox1.Checked = true;
            }
        }
    }
     
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OkasionDb"].ConnectionString);
        con.Open();
        sql = "Select * from tblUsers where Username=@username and Pass=@pass";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@username", uname.Text);
        cmd.Parameters.AddWithValue("@pass", pass.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if(dt.Rows.Count!=0)
        {
            if(CheckBox1.Checked)
            {
                Response.Cookies["Username"].Value = uname.Text;
                Response.Cookies["Userpass"].Value = pass.Text;
                Response.Cookies["Username"].Expires = DateTime.Now.AddDays(10);
                Response.Cookies["Userpass"].Expires = DateTime.Now.AddDays(10);

            }
            else
            {
                Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Userpass"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Write("<script> alert('Login Successfull.');</script>");
            Session["Username"] = uname.Text;
            Response.Redirect("~/UserHome.aspx");
        }
        else
        {
            lblerror.Text = "Invalid Username and Password.";
        }

        con.Close();
    }
}