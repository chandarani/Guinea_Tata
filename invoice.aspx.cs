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

public partial class invoice : System.Web.UI.Page
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
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
        OracleDataAdapter da = new OracleDataAdapter("select serial_no, product_name, quantity, amount from invoice", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
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

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       try{
        if (e.CommandName.Equals("AddNew"))
        {
                      // Label lblid = new Label();
                     //  lblid = (Label)GridView1.Rows[e.RowIndex].FindControl("lblID");
          

            TextBox txtParti2 = (TextBox)GridView1.FooterRow.FindControl("txtParti2");
            TextBox txtQty2 = (TextBox)GridView1.FooterRow.FindControl("txtQty2");
             TextBox txtAmt2 = (TextBox)GridView1.FooterRow.FindControl("txtAmt2");

           
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleCommand cmd = new OracleCommand("insert into invoice(job_card_no, product_name, quantity, amount)values('" + ViewState["job_card_no"].ToString() + "', '" + txtParti2.Text + "', " + Convert.ToInt32(txtQty2.Text) + "," + Convert.ToDouble(txtAmt2.Text) + ")", con);
            //SqlCommand cmd = new SqlCommand("insert into Employees(Empid, Category, mobile) values('" + empid + "', " + Convert.ToInt32(txtname.Text) + ", '" + txtprice.Text + "')", con);
           con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            double tot = 0;

            if(ViewState["total"] !=null)
             tot= Convert.ToDouble(ViewState["total"].ToString());
            tot=tot+  Convert.ToDouble(txtAmt2.Text.ToString());
            ViewState["total"] = tot.ToString();
            TextBox5.Text = ViewState["total"].ToString();

            BindGridview();
        }
       }
       catch(Exception ex)
       {}

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ViewState["job_card_no"] = txtjob.Text;
        BindGridview();
        Button1.Enabled = false;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
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
            

        }
        catch (Exception ex)


        {
            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

        }
    }
}
