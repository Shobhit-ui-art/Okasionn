using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddEvent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //BindEventRepeater();
        PopulateGridview();
    }

    private void PopulateGridview()
    {
        DataTable dtbl = new DataTable();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OkasionDb"].ConnectionString);
        {
            con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM event", con);
            sqlDa.Fill(dtbl);
        }
        if (dtbl.Rows.Count > 0)
        {
            gridviewevents.DataSource = dtbl;
            gridviewevents.DataBind();
        }
        else
        {
            dtbl.Rows.Add(dtbl.NewRow());
            gridviewevents.DataSource = dtbl;
            gridviewevents.DataBind();
            gridviewevents.Rows[0].Cells.Clear();
            gridviewevents.Rows[0].Cells.Add(new TableCell());
            gridviewevents.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
            gridviewevents.Rows[0].Cells[0].Text = "No Data Found ..!";
            gridviewevents.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
        }
    }

   

    protected void btnAddEvent_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OkasionDb"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into event(Event_type) Values('" + txtEvent.Text + "')", con);
            cmd.ExecuteNonQuery();

            Response.Write("<script> alert('Event Added Successfully ');  </script>");
            txtEvent.Text = string.Empty;

            con.Close();
            //lblMsg.Text = "Registration Successfully done";
            //lblMsg.ForeColor = System.Drawing.Color.Green;
            txtEvent.Focus();
            //BindEventRepeater();
        }
    }
}