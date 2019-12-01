using System;
using System.Web.UI.WebControls;
using System.Data.OracleClient;
using System.Data;
using System.Drawing;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class userInvoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //BindGridview();
          
            txtdate.Text = DateTime.Now.ToString("dd-MMM-yyyy");
            TextBox8.Text = Request.QueryString["ref"].ToString();

            try
            {
                OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
                OracleDataAdapter da = new OracleDataAdapter("select b.customer_name as cn, b.mobile_no as mob, j.job_card_no as jc from admin_booking b,admin_job j where b.customer_ref_no=j.customer_ref_no and b.customer_ref_no = '" + Request.QueryString["ref"].ToString() + "' ", con);
                DataSet ds3 = new DataSet();
                da.Fill(ds3);
                if (ds3.Tables[0].Rows.Count > 0)
                {
                    txtcname.Text = ds3.Tables[0].Rows[0]["cn"].ToString();
                    txtmob.Text = ds3.Tables[0].Rows[0]["mob"].ToString();
                    txtjob.Text = ds3.Tables[0].Rows[0]["jc"].ToString();
                }
                Button1.Enabled = true;
                ViewState["job_card_no"] = txtjob.Text.ToString();
            }
            catch (Exception ex)
            {
                string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

            }
        }
    }
    //protected void searchid()
    //{

    //    try
    //    {
    //        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
    //        OracleDataAdapter da = new OracleDataAdapter("select customer_ref_no from admin_booking order by customer_ref_no", con);
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
    protected void BindGridview()
    {
        try
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter("select serial_no, product_name, quantity, amount from invoice where job_card_no='" + txtjob.Text + "' order by serial_no", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                GridView1.DataSource = ds;
                GridView1.DataBind();


                OracleConnection con2 = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
                OracleDataAdapter da2 = new OracleDataAdapter("select sum(amount) as amtSum from invoice where job_card_no='" + txtjob.Text + "'", con2);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2);
                TextBox5.Text = ds2.Tables[0].Rows[0]["amtSum"].ToString();
                double vat = Convert.ToDouble(TextBox5.Text) * 0.14;
                TextBox6.Text = vat.ToString();
                double tot = Convert.ToDouble(TextBox5.Text) + vat;
                TextBox7.Text = tot.ToString();



            }
            else
            {
                Response.Write("<script>alert('Invoice not prepare ........')</script>");

            }
        }
        catch (Exception ex)
        {
            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);


        }
    }

   
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // ViewState["job_card_no"] = txtjob.Text;
        BindGridview();
        Button1.Enabled = false;


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
    //        OracleDataAdapter da = new OracleDataAdapter("select b.customer_name as cn, b.mobile_no as mob, j.job_card_no as jc from admin_booking b,admin_job j where b.customer_ref_no=j.customer_ref_no and b.customer_ref_no = '" + DropDownList1.SelectedItem.ToString() + "' ", con);
    //        DataSet ds3 = new DataSet();
    //        da.Fill(ds3);
    //        if (ds3.Tables[0].Rows.Count > 0)
    //        {
    //            txtcname.Text = ds3.Tables[0].Rows[0]["cn"].ToString();
    //            txtmob.Text = ds3.Tables[0].Rows[0]["mob"].ToString();
    //            txtjob.Text = ds3.Tables[0].Rows[0]["jc"].ToString();
    //        }
    //        Button1.Enabled = true;
    //        ViewState["job_card_no"] = txtjob.Text.ToString();
    //    }
    //    catch (Exception ex)
    //    {
    //        string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

    //    }
   // }

    protected void btn_Printpermit_Click(object sender, EventArgs e)
    {

    }

}
