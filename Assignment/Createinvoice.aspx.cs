using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Createinvoice : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Assignment\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd=new SqlCommand("insert into Producttable(no, productname, price, quantity) values('"+Session["no"]+"','"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')",con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Createinvoice.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Gridview.aspx");
    }
}