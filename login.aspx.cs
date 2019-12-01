using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if ((txtref.Text == "" && txtcust.Text == "") || (txtref.Text == "" && txtbirth.Text == ""))
            {
                string pop = "alert('Please enter the required details');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

            }
            DataSet ds3 = new DataSet();
            ds3 = myclass.selectDb("select customer_ref_no, customer_name,birthday from admin_booking where customer_ref_no='" + txtcust.Text + "' or customer_name='"+txtref.Text+ "' and birthday='"+txtbirth.Text  +"' ");
            if (ds3.Tables[0].Rows.Count > 0)
            {
                txtref.Text = ds3.Tables[0].Rows[0]["customer_ref_no"].ToString();
                txtcust.Text = ds3.Tables[0].Rows[0]["customer_name"].ToString();
                txtbirth.Text = ds3.Tables[0].Rows[0]["birthday"].ToString();
                Response.Redirect("userinvoice.aspx?ref=" + txtref.Text);

            }
            else
            {
                //Response.Write("not found ");
                string pop = "alert('SORRY!! Customer doesn't exists........!!!');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

            }
           
        }
        catch (Exception ex)
        {
            string pop = "alert('SORRY!! Exception ........');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

        }
    }
    protected void txtcust_TextChanged(object sender, EventArgs e)
    {

    }
}