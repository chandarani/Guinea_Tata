using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;

public partial class admin_AdminTATA : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["admin"] != "")
            {
                Label1.Text = "Welcome  " + Session["admin"].ToString();


            }
            else
                Response.Redirect("ad_login.aspx");

        }
    }
   
    
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ad_job.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("adm_invoice.aspx");
    }

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ad_book.aspx");
    }
   
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ad_personal.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ad_order.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ad_home.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Session.Clear();
        Response.Redirect("ad_login.aspx");

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("ad_login.aspx");

    }
}
