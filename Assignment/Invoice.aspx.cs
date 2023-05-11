using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Invoice : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Assignment\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO Table1(no, clientname, country, city, address, postaladd, accountno, date, email, mobileno) VALUES('"+txt.Text+"','" + txt1.Text + "','" + txt2.Text + "','" + txt3.Text + "','" + txt4.Text + "','" + txt5.Text + "','" + txt15.Text + "','" + txt16.Text + "','" + txt17.Text + "','" + txt18.Text + "')" , con);
        
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Data inserted successfully");
        Session["no"] = txt.Text;
        Response.Redirect("Createinvoice.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Gridview.aspx");
        
    }
}