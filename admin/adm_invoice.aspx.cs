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

public partial class admin_adm_invoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            //BindGridview();
            searchid();
            txtdate.Text = DateTime.Now.ToString("dd-MMM-yyyy");
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
    protected void BindGridview()
    {
        try
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter("select serial_no, product_name, quantity, amount from invoice where job_card_no='"+txtjob.Text+"' order by serial_no", con);
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
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "Enter Data.....";

            }
        }
        catch (Exception ex)
        {
            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);


        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGridview();

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGridview();

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindGridview();

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int serial = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["serial_no"].ToString());
        TextBox txtproduct = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtParti");
        TextBox txtQty = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtQty");
        TextBox txtAmt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtAmt");
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
        OracleCommand cmd = new OracleCommand("update  invoice set product_name='"+txtproduct.Text +"', quantity="+txtQty.Text +", amount="+txtAmt.Text +"  where job_card_no='" + txtjob.Text + "' and serial_no = " + serial + " ", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;

        BindGridview();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int  serial =Convert.ToInt32( GridView1.DataKeys[e.RowIndex].Values["serial_no"].ToString());
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
        OracleCommand cmd = new OracleCommand("delete from  invoice where job_card_no='" + txtjob.Text + "' and serial_no = " + serial +" ", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        BindGridview();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        
            if (e.CommandName.Equals("AddNew"))
            {
                // Label lblid = new Label();
                //  lblid = (Label)GridView1.Rows[e.RowIndex].FindControl("lblID");


                OracleConnection con2 = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
                OracleDataAdapter da2 = new OracleDataAdapter("select max(serial_no) as maxSerial from invoice where job_card_no='" + txtjob.Text + "'", con2);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2);
                int serial=1;
                if (ds2.Tables[0].Rows[0]["maxSerial"].ToString() != "")
                {

                    serial = Convert.ToInt32(ds2.Tables[0].Rows[0]["maxSerial"].ToString());
                    serial++;
                }








                TextBox txtParti2 = (TextBox)GridView1.FooterRow.FindControl("txtParti2");
                TextBox txtQty2 = (TextBox)GridView1.FooterRow.FindControl("txtQty2");
                TextBox txtAmt2 = (TextBox)GridView1.FooterRow.FindControl("txtAmt2");


                OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
                OracleCommand cmd = new OracleCommand("insert into invoice(job_card_no, serial_no, product_name, quantity, amount) values('" +txtjob.Text + "', "+serial+", '" + txtParti2.Text + "', " + Convert.ToInt32(txtQty2.Text) + ", " + Convert.ToDouble(txtAmt2.Text) + ")", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
               // double tot = 0;

                //if (ViewState["total"] != null)
                //    tot = Convert.ToDouble(ViewState["total"].ToString());
                //tot = tot + Convert.ToDouble(txtAmt2.Text.ToString());
                //ViewState["total"] = tot.ToString();
                //TextBox5.Text = ViewState["total"].ToString();

                BindGridview();
            }
       // }
       // catch (Exception ex)
       // {
       //     string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
       //     ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

        
       //}

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
        Response.Redirect("ad_home.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter("select b.customer_name as cn, b.mobile_no as mob, j.job_card_no as jc from admin_booking b,admin_job j where b.customer_ref_no=j.customer_ref_no and b.customer_ref_no = '" + DropDownList1.SelectedItem.ToString() + "' ", con);
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
   
    protected void btn_Printpermit_Click(object sender, EventArgs e)
    {

    }
    
}
