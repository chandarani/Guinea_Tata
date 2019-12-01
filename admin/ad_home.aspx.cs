using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ad_login.aspx");
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ad_login.aspx");
    }
    protected void ImageButton8_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}