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
  //  int jid;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sid= null;
        if (!IsPostBack)
        {
     
            DataSet ds = new DataSet();
            ds = myclass.selectDb("select sq_job.nextval from dual");
            if (ds.Tables[0].Rows.Count > 0)
            {


               sid = ds.Tables[0].Rows[0]["nextval"].ToString();
               // jid = Convert.ToInt32(id);
               
            
            
            }
          // Response.Write(sid.ToString());
           ViewState["sid"] = sid.ToString();

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
                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = ds.Tables[0].Columns[0].ToString();
                DropDownList2.DataValueField = ds.Tables[0].Columns[0].ToString();
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "select");
            }
        }

        catch (Exception ex)
        {
            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
        }
    }
   
    protected void btnjob_Click(object sender, EventArgs e)
    {
        try
        {

            if (txtvehreg.Text == "")
            {
                string pop = "alert('Please enter the Registration Number.........!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;
               
            }
            if (txtdate.Text == "")
            {
                string pop = "alert('Please enter Created Date........!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;
            }
            if (txttendate.Text == "")
            {
                string pop = "alert('Please enter Tentative Date........!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;

            }
            if (DropDownList2.SelectedItem.Text == "")
            {
                string pop = "alert('Please select Customer Reference Number ........!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;
            }
            if (DropDownList1.SelectedItem.Text == "")
            {
                string pop = "alert('Please select Status......!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;
            }
            if (DropDownList1.SelectedItem.Text != "Open" && DropDownList1.SelectedItem.Text != "Close")
            {
                string pop = "alert('Please select Open /Close.....!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;
            }

            try
            {
                OracleConnection con11 = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
                OracleDataAdapter da11 = new OracleDataAdapter("select customer_ref_no from admin_job where customer_ref_no='" + DropDownList2.SelectedItem.ToString() + "'", con11);
                DataSet ds11 = new DataSet();
                da11.Fill(ds11);
                if (ds11.Tables[0].Rows.Count > 0)
                {
                    string pop = "alert('Job Card already exists .....!!!.');";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                    return;
                }
            }

            catch (Exception ex)
            {
                string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
            }


            int seqid=Convert.ToInt32( ViewState["sid"].ToString());
            string Ref = "JC-GuinMo/PP1-0" + txtbook.Text + "/" + seqid.ToString("D6");
            Response.Write(Ref.ToString());

            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleCommand cmd = new OracleCommand("insert into admin_job(customer_ref_no,booking_id,job_card_no,vehicle_reg_no,chasis_no,status,created_date,tentative_date)values(:customer_ref_no,:booking_id,:job_card_no,:vehicle_reg_no,:chasis_no,:status,:created_date,:tentative_date)", con);
            cmd.Parameters.Add(new OracleParameter("booking_id", txtbook.Text));
            cmd.Parameters.Add(new OracleParameter("customer_ref_no", DropDownList2.SelectedItem.Text));
            cmd.Parameters.Add(new OracleParameter("job_card_no", Ref.ToString()));
            cmd.Parameters.Add(new OracleParameter("vehicle_reg_no", txtvehreg.Text));
            cmd.Parameters.Add(new OracleParameter("chasis_no", txtchasis.Text));
            cmd.Parameters.Add(new OracleParameter("status", DropDownList1.SelectedItem.Text));
            cmd.Parameters.Add(new OracleParameter("created_date", txtdate.Text));
            cmd.Parameters.Add(new OracleParameter("tentative_date", txttendate.Text));

            con.Open();
            int n = cmd.ExecuteNonQuery();
            con.Close();
            string pop1 = "alert('Job Card Created with Customer Reference Number  " + Ref.ToString() + " .........!!!.');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop1, true);

            //Response.Write(n + "records inserted");

           
            
        }

        catch (Exception ex)
        {

            //string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

            Response.Write(ex.Message.ToString());
        }


    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    try
    //    {

    //        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
    //        OracleCommand cmd = new OracleCommand("update admin_job  set status=:status,tentative_date=:tentative_date where customer_ref_no ='" + DropDownList2.SelectedItem.ToString() + "'", con);

    //        cmd.Parameters.Add(new OracleParameter("status", DropDownList1.SelectedItem.Text));
    //        // cmd.Parameters.Add(new OracleParameter("created_date", txtdate.Text));
    //        cmd.Parameters.Add(new OracleParameter("tentative_date", txttendate.Text));
    //        con.Open();
    //        int n = cmd.ExecuteNonQuery();
    //        con.Close();
    //        string pop = "alert('Job Card Updated of Customer with booking Id  " + txtbook.Text + " .........!!!.');";
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

    //        //Response.Write(n + "records updated");
    //    }
    //    catch (Exception ex)
    //    {
    //        string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

    //        // Response.Write(ex.Message.ToString());

    //    }
    //}
    protected void btnreset_Click(object sender, EventArgs e)
    {

        DropDownList2.SelectedValue = "select";
        txtbook.Text = "";
        txtvehreg.Text = "";
        txtchasis.Text = "";
        DropDownList1.SelectedValue = "select";
        txtdate.Text = "";
        txttendate.Text = "";

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter("select * from admin_booking where customer_ref_no = '"+DropDownList2.SelectedItem.ToString() +"' ",con);
            DataSet ds3 = new DataSet();
            da.Fill(ds3);
            if (ds3.Tables[0].Rows.Count > 0)
            {
                txtbook.Text = ds3.Tables[0].Rows[0]["booking_id"].ToString();
                txtvehreg.Text = ds3.Tables[0].Rows[0]["registration_no"].ToString();
                txtchasis.Text = ds3.Tables[0].Rows[0]["chasis_no"].ToString();
                DropDownList1.SelectedValue = "select";
                txtdate.Text = "";
                txttendate.Text = "";
            }
                     

        }
        catch (Exception ex)
        {
            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
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

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}