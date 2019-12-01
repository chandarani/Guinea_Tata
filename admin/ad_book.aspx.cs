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
        }
        Panel2.Visible = false;

    }
    protected void searchid()
    {

        try
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter("select booking_id from admin_booking order by booking_id", con);
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
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            if (DropDownList2.SelectedItem.Text == "")
            {
                string pop = "alert('Please enter Vehicle Type.....!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
               
                //Response.Write("Please enter Vehicle Type");
                //return;
            }
            if (txtreg.Text == "")
            {
                string pop = "alert('Please enter the Registration Number.....!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
               
            }
            if (txtcname.Text == "")
            {
                string pop = "alert('Please enter Customer Name.....!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
           
            
            }
            if (txtmob.Text == "")
            {
                string pop = "alert('Please enter the Mobile Number.....!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
            }
            if (txtmail.Text == "")
            {
                string pop = "alert('Please enter Email Id.....!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
            }
            if (DropDownList3.SelectedItem.Text == "")
            {
                string pop = "alert('Please enter Service Type.....!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
            }
            if (txtdate.Text == "")
            {
                string pop = "alert('Please enter booking date.....!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
            }
            if (DropDownList4.SelectedItem.Text == "")
            {
                string pop = "alert('Please enter Service Workshop.....!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
            }

            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleCommand cmd = new OracleCommand("update admin_booking  set registration_no=:registration_no,customer_name=:customer_name,mobile_no=:mobile_no,chasis_no=:chasis_no,email=:email,address=:address,birthday=:birthday,company=:company,model=:model,service_type=:service_type,booking_date=:booking_date,service_workshop=:service_workshop where  booking_id ='" + DropDownList1.SelectedValue + "'", con);
           
            cmd.Parameters.Add(new OracleParameter("registration_no", txtreg.Text));
            cmd.Parameters.Add(new OracleParameter("chasis_no", txtchasis.Text));
            cmd.Parameters.Add(new OracleParameter("company", txtcomp.Text));
            cmd.Parameters.Add(new OracleParameter("model", txtmodel.Text));
            cmd.Parameters.Add(new OracleParameter("customer_name", txtcname.Text));
            cmd.Parameters.Add(new OracleParameter("mobile_no", txtmob.Text));
            cmd.Parameters.Add(new OracleParameter("email", txtmail.Text));
            cmd.Parameters.Add(new OracleParameter("address", txtadd.Text));
            cmd.Parameters.Add(new OracleParameter("birthday", txtbirth.Text));
            cmd.Parameters.Add(new OracleParameter("service_type", DropDownList3.SelectedItem.Text));
            cmd.Parameters.Add(new OracleParameter("booking_date", txtdate.Text));
            cmd.Parameters.Add(new OracleParameter("service_workshop", DropDownList4.SelectedItem.Text));
            
            con.Open();
            int n = cmd.ExecuteNonQuery();
            con.Close();
            string pop1 = "alert('Record updated of customer "+txtcname.Text+" with customer_ref_no "+txtcust.Text+" .........!!!.');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop1, true);

            //Response.Write(n + "records updated");
        }
        catch (Exception ex)
        {
            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

            //Response.Write(ex.Message.ToString());

        }
    }

   
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DataSet ds3 = new DataSet();
            ds3 = myclass.selectDb("select  * from admin_booking where  booking_id='"+DropDownList1.SelectedItem.ToString()+"' ");
            if (ds3.Tables[0].Rows.Count > 0)
            {
                txtcust.Text = ds3.Tables[0].Rows[0]["customer_ref_no"].ToString();
                txtcname.Text = ds3.Tables[0].Rows[0]["customer_name"].ToString();
                DropDownList3.Text = ds3.Tables[0].Rows[0]["vehicle_type"].ToString();
                txtreg.Text = ds3.Tables[0].Rows[0]["registration_no"].ToString();
                txtchasis.Text = ds3.Tables[0].Rows[0]["chasis_no"].ToString();
                if (txtchasis.Text == "")
                {
                    txtchasis.Text = "";
                }
                else
                    txtbirth.Text = "";

                txtcomp.Text = ds3.Tables[0].Rows[0]["company"].ToString();
                txtmodel.Text = ds3.Tables[0].Rows[0]["model"].ToString();
                txtmob.Text = ds3.Tables[0].Rows[0]["mobile_no"].ToString();
                txtmail.Text = ds3.Tables[0].Rows[0]["email"].ToString();
                txtadd.Text = ds3.Tables[0].Rows[0]["address"].ToString();
               
                string bdate= ds3.Tables[0].Rows[0]["birthday"].ToString();
               // Response.Write("date ="+bdate);
                if (bdate != "")
                {
                    DateTime bdt = Convert.ToDateTime(bdate);

                    txtbirth.Text = bdt.ToString("dd-MMM-yyyy");
                }
                else
                    txtbirth.Text = "";

                DropDownList3.SelectedValue = ds3.Tables[0].Rows[0]["service_type"].ToString();
                string bodate = ds3.Tables[0].Rows[0]["booking_date"].ToString();
                DateTime bdt1 = Convert.ToDateTime(bodate);
                txtdate.Text = bdt1.ToString("dd-MMM-yyyy");

                DropDownList4.SelectedValue = ds3.Tables[0].Rows[0]["service_workshop"].ToString();

            }


        }
        catch (Exception ex)
        {
            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        DropDownList1.SelectedValue = "select";
        txtcust.Text = "";
        DropDownList3.SelectedValue = "Select";
        txtreg.Text = "";
        txtchasis.Text = "";
        txtcomp.Text = "";
        txtmodel.Text = "";
        txtcname.Text = "";
        txtmob.Text = "";
        txtmail.Text = "";
        txtadd.Text = "";
        txtbirth.Text = "";
        DropDownList4.SelectedValue = "Select";
        txtdate.Text = "";
        DropDownList2.SelectedValue = "passenger";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter("select booking_id,customer_ref_no,vehicle_type,registration_no,customer_name,mobile_no,chasis_no,email,address,birthday,company,model,service_type,booking_date,service_workshop from admin_booking order by booking_id", con);
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
