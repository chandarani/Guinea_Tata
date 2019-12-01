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


public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            BindGridview();
        }
    }
    protected void BindGridview()
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
        OracleDataAdapter da = new OracleDataAdapter("select job_card_no, product_name, quantity, amount from invoice", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        else
        {
            Response.Write("There is no data to Display");
        }
    }
 
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
