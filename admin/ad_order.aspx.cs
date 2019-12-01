using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
             //searchid();
             Panel2.Visible = false;
        }
       
    }
    //protected void searchid()
    //{

    //    try
    //    {
    //        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
    //        OracleDataAdapter da = new OracleDataAdapter("select job_card_no from admin_job order by job_card_no", con);
    //        DataSet ds = new DataSet();
    //        da.Fill(ds);
    //        if (ds.Tables[0].Rows.Count > 0)
    //        {
    //            DropDownList1.DataSource = ds;
    //            DropDownList1.DataTextField = ds.Tables[0].Columns[0].ToString();
    //            DropDownList1.DataValueField = ds.Tables[0].Columns[0].ToString();
    //            DropDownList1.DataBind();
    //            DropDownList1.Items.Insert(0, "select");
    //        }
    //    }

    //    catch (Exception ex)
    //    {
    //        string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
    //    }
    //}
   
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            OracleConnection con11 = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da11 = new OracleDataAdapter("select product_no from ad_product where product_no='" + txtordn.Text + "'", con11);
            DataSet ds11 = new DataSet();
            da11.Fill(ds11);
            if (ds11.Tables[0].Rows.Count > 0)
            {
                string pop = "alert('Product already exists .....!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;
            }
        }

        catch (Exception ex)
        {
            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
        }
        try
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleCommand cmd = new OracleCommand("insert into ad_product(product_no,product_name,product_type,amount)values(:product_no,:product_name,:product_type,:amount)", con);
            cmd.Parameters.Add(new OracleParameter("product_no",txtordn.Text));
            cmd.Parameters.Add(new OracleParameter("product_name",txtordtype.Text));
            cmd.Parameters.Add(new OracleParameter("product_type", txtoname.Text));
            cmd.Parameters.Add(new OracleParameter("amount",txtamount.Text));
            con.Open();
            int n = cmd.ExecuteNonQuery();
            con.Close();
            string pop = "alert('Product added to the Record.........!!!.');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

        }
        catch (Exception ex)
        {

            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

            //Response.Write(ex.Message.ToString());
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //DropDownList1.SelectedItem.Text = "select";
        txtamount.Text = "";
        txtoname.Text = "";
        txtordn.Text = "";
        txtordtype.Text = "";
        
    }
    //protected void Button3_Click(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
    //        OracleCommand cmd = new OracleCommand("update ad_product set product_no=:product_no,product_name=:product_name,product_type=:product_type,amount=:amount ", con);
    //       // cmd.Parameters.Add(new OracleParameter("job_card", DropDownList1.SelectedItem.Text));
    //        cmd.Parameters.Add(new OracleParameter("product_no", txtordn.Text));
    //        cmd.Parameters.Add(new OracleParameter("product_name", txtordtype.Text));
    //        cmd.Parameters.Add(new OracleParameter("product_type", txtoname.Text));
    //        cmd.Parameters.Add(new OracleParameter("amount", txtamount.Text));
    //        con.Open();
    //        int n = cmd.ExecuteNonQuery();
    //        con.Close();
    //        string pop = "alert('Record updated.........!!!.');";
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

    //    }
    //    catch (Exception ex)
    //    {

    //        string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

    //        //Response.Write(ex.Message.ToString());
    //    }


    protected void  show_Click(object sender, EventArgs e)
     {
        try
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter("select product_no,product_type,product_name,amount from ad_product order by product_no", con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                Panel1.Visible = true;
                Panel2.Visible = true;
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
            else
            {
                Response.Write(" There is no data to Display ");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }

   
}