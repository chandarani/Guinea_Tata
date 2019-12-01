using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;

public partial class admin_ad_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtname.Text == "")
            {
                string pop = "alert('Please enter User Name.....!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
               
               // Response.Write("please enter User Name");
            }
            if (txtpass.Text == "")
            {
                string pop = "alert('Please enter Password.....!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
               
               // Response.Write("please enter Password");
            }


            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter("select *  from login where userid='"+txtname.Text+"' and password='"+txtpass.Text+"' ", con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["admin"] = txtname.Text.ToString();

                Response.Redirect("ad_home.aspx");
            }
            else
            {
                string pop = "alert('Invalid User Name / Password, Try Again...');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;               
                Response.Write("Invalid User Name / Password, Try Again...");
                txtname.Text = "";
                txtpass.Text = "";
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }

    }


    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtpass.Text = "";
    }
    protected void txtpass_TextChanged(object sender, EventArgs e)
    {

    }
}