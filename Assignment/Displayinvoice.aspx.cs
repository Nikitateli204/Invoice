using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class Displayinvoice : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Assignment\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("Sno");
            dt.Columns.Add("productname");
            dt.Columns.Add("quantity");

            dt.Columns.Add("price");



            dt.Columns.Add("totalprice");
            SqlConnection scon = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Assignment\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        

            SqlCommand cmd1 = new SqlCommand("Select * from Producttable where no=" + Request.QueryString["no"]);
            cmd1.Connection = scon;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            int totalrows = ds1.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while (i < totalrows)
            {

                
                dr = dt.NewRow();
                dr["Sno"] = i+1;
                SqlCommand cmd2 = new SqlCommand("Select * from Producttable where no=" + Request.QueryString["no"]);
                cmd2.Connection = scon;
                dr["productname"] = ds1.Tables[0].Rows[i]["productname"].ToString();
                dr["quantity"] = ds1.Tables[0].Rows[i]["quantity"].ToString();
                dr["price"] = ds1.Tables[0].Rows[i]["price"].ToString();
                int Price1 = Convert.ToInt32(ds1.Tables[0].Rows[i]["price"].ToString());
                int Quantity1 = Convert.ToInt32(ds1.Tables[0].Rows[i]["quantity"].ToString());
                int TotalPrice = Price1 * Quantity1;
                dr["totalprice"] = TotalPrice;
                grandtotal = grandtotal + TotalPrice;
                dt.Rows.Add(dr);
                i = i + 1;


            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
            lbl.Text = grandtotal.ToString();
       

        }
        
        String mycon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Assignment\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
        String myquery = "select * from Table1 where no=" + Request.QueryString["no"];
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Lb1.Text = ds.Tables[0].Rows[0]["clientname"].ToString();
            Lb2.Text = ds.Tables[0].Rows[0]["country"].ToString();
            Lb3.Text = ds.Tables[0].Rows[0]["city"].ToString();
            Lb4.Text = ds.Tables[0].Rows[0]["address"].ToString();
            Lb5.Text = ds.Tables[0].Rows[0]["mobileno"].ToString();
            Lb6.Text = ds.Tables[0].Rows[0]["email"].ToString();
            Lb7.Text = ds.Tables[0].Rows[0]["no"].ToString();
            Lb8.Text = ds.Tables[0].Rows[0]["date"].ToString();















        }
        con.Close();






        


    }
    protected void GridView1_DataBinding(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
    }

}