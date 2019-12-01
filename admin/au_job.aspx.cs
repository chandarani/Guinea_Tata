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
            searchid();
            Panel2.Visible = false;
        }
    }
    protected void searchid()
    {
        try
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter("select customer_ref_no from admin_booking order by customer_ref_no", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = ds.Tables[0].Columns[0].ToString();
                DropDownList1.DataValueField = ds.Tables[0].Columns[0].ToString();
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "select");
            }
        }

        catch (Exception ex)
        {
            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
        }
    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter("select * from admin_job where customer_ref_no = '" + DropDownList1.SelectedItem.ToString() + "' ", con);
            DataSet ds3 = new DataSet();
            da.Fill(ds3);
            if (ds3.Tables[0].Rows.Count > 0)
            {
                txtbook.Text = ds3.Tables[0].Rows[0]["booking_id"].ToString();
                txtvehreg.Text = ds3.Tables[0].Rows[0]["vehicle_reg_no"].ToString();
                txtchasis.Text = ds3.Tables[0].Rows[0]["chasis_no"].ToString();
               // txtdate.Text = ds3.Tables[0].Rows[0]["created_date"].ToString();
                string bdate = ds3.Tables[0].Rows[0]["created_date"].ToString();
                DateTime bdt = Convert.ToDateTime(bdate);
                txtdate.Text = bdt.ToString("dd-MMM-yyyy");

                //txttendate.Text = ds3.Tables[0].Rows[0]["tentative_date"].ToString();
                string bodate = ds3.Tables[0].Rows[0]["tentative_date"].ToString();
                DateTime bdt1 = Convert.ToDateTime(bodate);
                txttendate.Text = bdt1.ToString("dd-MMM-yyyy");

                //DropDownList2.SelectedValue = ds3.Tables[0].Rows[0]["status"].ToString();

            }


        }
        catch (Exception ex)
        {
            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

        }
    }
    protected void update_job_Click(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedItem.Text != "Open" && DropDownList2.SelectedItem.Text != "Close" && DropDownList2.SelectedItem.Text != "")
        {
            string pop = "alert('Please select Open /Close.....!!!.');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

        }
        try
        {

            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleCommand cmd = new OracleCommand("update admin_job  set status=:status,tentative_date=:tentative_date where customer_ref_no ='" + DropDownList1.SelectedValue + "'", con);

            cmd.Parameters.Add(new OracleParameter("status", DropDownList2.SelectedItem.Text));
            // cmd.Parameters.Add(new OracleParameter("created_date", txtdate.Text));
            cmd.Parameters.Add(new OracleParameter("tentative_date", txttendate.Text));
            con.Open();
            int n = cmd.ExecuteNonQuery();
            con.Close();
            string pop = "alert('Job Card Updated of Customer with booking Id  " + txtbook.Text + " .........!!!.');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

            //Response.Write(n + "records updated");
        }
        catch (Exception ex)
        {
            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

            // Response.Write(ex.Message.ToString());

        }
    }
    protected void view_Click(object sender, EventArgs e)
    {
        try
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter("select customer_ref_no,booking_id,job_card_no,vehicle_reg_no,chasis_no,status,created_date,tentative_date from admin_job order by booking_id", con);
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
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedItem.Text != "Open" && DropDownList2.SelectedItem.Text != "Close")
        {
            string pop = "alert('Please select Open /Close.....!!!.');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

        }
    }
}