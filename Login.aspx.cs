using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    string sql;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void signup_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OkasionDb"].ConnectionString);
        con.Open();
        sql = "Insert into tblUsers(Name,Username,Email,Mobile,Pass)values('" + name.Text + "','" + uname.Text + "','" + email.Text + "',"+Convert.ToInt64(mob.Text)+",'" + npass.Text + "')";
        SqlCommand cmd=new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Registration Successfully done');</script>");
        Response.Redirect("~/signin.aspx");
        clr();
        con.Close();
    }
    private void clr()
    {
        name.Text = string.Empty;
        uname.Text = string.Empty;
        npass.Text = string.Empty;
        email.Text = string.Empty;
        cpass.Text = string.Empty;
    }
}