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
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter("select * from admin_booking where customer_ref_no = '" + DropDownList1.SelectedItem.ToString() + "' ", con);
            DataSet ds3 = new DataSet();
            da.Fill(ds3);
            if (ds3.Tables[0].Rows.Count > 0)
            {
                txtcname.Text = ds3.Tables[0].Rows[0]["customer_name"].ToString();
                txtvehreg.Text = ds3.Tables[0].Rows[0]["registration_no"].ToString();
                txtcomp.Text = ds3.Tables[0].Rows[0]["company"].ToString();
                txtmodel.Text = ds3.Tables[0].Rows[0]["model"].ToString();
                txtmob.Text = ds3.Tables[0].Rows[0]["mobile_no"].ToString();
                txtadd.Text = ds3.Tables[0].Rows[0]["address"].ToString();
                txtmail.Text = ds3.Tables[0].Rows[0]["email"].ToString();
               
                string birth = ds3.Tables[0].Rows[0]["birthday"].ToString();
                DateTime dbirth = Convert.ToDateTime(birth);
                txtbirth.Text = dbirth.ToString("dd-MMM-yyyy");

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
        DropDownList1.SelectedValue = "select";
        txtcname.Text = "";
        txtvehreg.Text = "";
        txtcomp.Text = "";
        txtmodel.Text = "";
        txtmob.Text = "";
        txtadd.Text = "";
        txtmail.Text = "";
        txtbirth.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            if (txtvehreg.Text == "")
            {
                Response.Write("Please enter the Registration Number");
                return;
            }
            if (txtcname.Text == "")
            {
                Response.Write("Please enter Customer Name");
                return;
            }
            if (txtmob.Text == "")
            {
                Response.Write("Please enter the Mobile Number");
                return;
            }

            //,birthday   ,:birthday

            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleCommand cmd = new OracleCommand("insert into personal(customer_ref_no,customer_name,registration_no,mobile,email,address,company,model,birthday )values(:customer_ref_no,:customer_name,:registration_no,:mobile,:email,:address,:company,:model,:birthday)", con);
            cmd.Parameters.Add(new OracleParameter("customer_ref_no", DropDownList1.SelectedItem.Text));
            cmd.Parameters.Add(new OracleParameter("registration_no", txtvehreg.Text));
            cmd.Parameters.Add(new OracleParameter("company", txtcomp.Text));
            cmd.Parameters.Add(new OracleParameter("model", txtmodel.Text));
            cmd.Parameters.Add(new OracleParameter("customer_name", txtcname.Text));
            cmd.Parameters.Add(new OracleParameter("mobile", txtmob.Text));
            cmd.Parameters.Add(new OracleParameter("email", txtmail.Text));
            cmd.Parameters.Add(new OracleParameter("address", txtadd.Text));
            cmd.Parameters.Add(new OracleParameter("birthday", txtbirth.Text));

            con.Open();
            int n = cmd.ExecuteNonQuery();
            con.Close();
            string pop = "alert('Personal Details are saved of Customer " +txtcname.Text  +" with customer_ref " +DropDownList1.SelectedItem.ToString()+ ".........!!!.');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

            //Response.Write(n + "records inserted");
        }

        catch (Exception ex)
        {

            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

            //Response.Write(ex.Message.ToString());
        }


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtvehreg.Text == "")
            {
                Response.Write("Please enter the Registration Number");
                return;
            }
            if (txtcname.Text == "")
            {
                Response.Write("Please enter Customer Name");
                return;
            }
            if (txtmob.Text == "")
            {
                Response.Write("Please enter the Mobile Number");
                return;
            }
            if (txtmail.Text == "")
            {
                Response.Write("Please enter Email Id");
                return;
            }
            if (txtcomp.Text == "")
            {
                Response.Write("Please enter Company Name ");
                return;
            }
            if (txtmodel.Text == "")
            {
                Response.Write("Please enter Model ");
                return;
            }
            if (txtadd.Text == "")
            {
                Response.Write("Please enter the Address ");
                return;
            }
            if (txtbirth.Text == "")
            {
                Response.Write("Please enter the Birthday ");
                return;
            }

            

            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleCommand cmd = new OracleCommand("update personal set customer_name=:customer_name,registration_no=:registration_no,mobile=:mobile,email=:email,address=:address,company=:company,model=:model,birthday=:birthday where customer_ref_no ='" + DropDownList1.SelectedValue + "'", con);
            cmd.Parameters.Add(new OracleParameter("registration_no", txtvehreg.Text));
            cmd.Parameters.Add(new OracleParameter("company", txtcomp.Text));
            cmd.Parameters.Add(new OracleParameter("model", txtmodel.Text));
            cmd.Parameters.Add(new OracleParameter("customer_name", txtcname.Text));
            cmd.Parameters.Add(new OracleParameter("mobile", txtmob.Text));
            cmd.Parameters.Add(new OracleParameter("email", txtmail.Text));
            cmd.Parameters.Add(new OracleParameter("address", txtadd.Text));
            DateTime birth = Convert.ToDateTime(txtbirth.Text);
            cmd.Parameters.Add(new OracleParameter("birthday", birth));
            con.Open();
            int n = cmd.ExecuteNonQuery();
            con.Close();
            string pop = "alert('Personal Details are updated of Customer " + txtcname.Text + " .........!!!.');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

            //Response.Write(n + "records updated");
        }
        catch (Exception ex)
        {
            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

            //Response.Write(ex.Message.ToString());

        }
    }
    protected void show_Click(object sender, EventArgs e)
    {
        try
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter("select customer_ref_no,customer_name,registration_no,company,model,mobile,address,email,birthday from personal order by customer_name", con);
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