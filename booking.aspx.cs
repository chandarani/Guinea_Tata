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
        if (!IsPostBack)
        {

            DataSet ds = new DataSet();
            ds = myclass.selectDb("select max(booking_id) as id from admin_booking");
            int n=1;
            if(ds.Tables[0].Rows[0]["id"].ToString() != "")
            {
                 n=Convert.ToInt32(ds.Tables[0].Rows[0]["id"].ToString());
                 n++;
                


            }
           
                
           txtbook.Text=n.ToString();

            DataSet ds2 = new DataSet();
            ds2 = myclass.selectDb("select service_id, service_type from service");
            if (ds2.Tables[0].Rows.Count > 0)
            {
                DropDownList2.DataSource = ds2;
                DropDownList2.DataValueField = ds2.Tables[0].Columns[0].ToString();
                DropDownList2.DataTextField = ds2.Tables[0].Columns[1].ToString();
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "Select");



            }

        }
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            if (txtreg.Text == "")
            {
                string pop = "alert('Please enter the Registration Number.........!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;

            }
            if (txtname.Text == "")
            {
                string pop = "alert('Please enter Customer Name.........!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;               
            }
            if (txtmob.Text == "")
            {
                string pop = "alert('Please enter the Mobile Number.........!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;
            }

             if (txtmob.Text.Length < 10 || txtmob.Text.Length > 10)
             {
                string pop = "alert('Please enter correct Mobile Number.........!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;
            }
            if (DropDownList2.SelectedItem.Text == "")
            {
                string pop = "alert('Please select Service Type.........!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;
            }
            if (DropDownList3.SelectedItem.Text == "")
            {
                string pop = "alert('Please select Service Workshop.........!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;
            }
            if (txtmodel.Text == "")
            {
                string pop = "alert('Please enter Model Number.........!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;
            }
            if (txtcomp.Text == "")
            {
                string pop = "alert('Please enter Company Name.........!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;
            }
            if (txtbirth.Text == "")
            {
                string pop = "alert('Please enter your Date of Birth.........!!!.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);
                return;
            }
           
           // string ch, com,mod,ma,ad,br,dt,d3;
           // ch = com = mod = ma = ad = br = dt = d3 = null;
           //// DateTime brdt, dtbooking;
          
           // if (txtchasis.Text != "")
           // {
           //    ch= txtchasis.Text;
           // }
           // if (txtcomp.Text == "")
           // {
           //    com= txtcomp.Text;
           // }
            //if (txtmodel.Text != "")
            //{
            //    mod = txtmodel.Text;
            //}
           // if (txtmail.Text == "")
           // {
           //     ma=txtmail.Text;
           // }
           // if (txtadd.Text == "")
           // {
           //     ad=txtadd.Text;
           // }
           // if (txtbirth.Text == "")
           // {
           //     br=txtbirth.Text;
           //     // brdt = Convert.ToDateTime(br.ToString());
           // }
           // if (txtdate.Text == "")
           // {
           //     dt=txtdate.Text ;
           //     //dtbooking = Convert.ToDateTime(dt.ToString());

           // }
           // if (DropDownList3.SelectedItem.Text != "select")
           // {
           //     d3=DropDownList3.SelectedItem.Text;
           // }



            int id = Convert.ToInt32(txtbook.Text);
            string Ref = "GUIN/" + id.ToString("D6") + "/" + DateTime.Now.ToString("MM") + "/" + DateTime.Now.ToString("yyyy");
            //Response.Write(Ref.ToString());

            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleCommand cmd = new OracleCommand("insert into admin_booking(booking_id,customer_ref_no,vehicle_type,registration_no,customer_name,mobile_no,chasis_no,email,address,birthday,company,model,service_type,booking_date,service_workshop)values(:booking_id,:customer_ref_no,:vehicle_type,:registration_no,:customer_name,:mobile_no,:chasis_no,:email,:address,:birthday,:company,:model,:service_type,:booking_date,:service_workshop)", con);
            cmd.Parameters.Add(new OracleParameter("booking_id", txtbook.Text));
            cmd.Parameters.Add(new OracleParameter("customer_ref_no", Ref.ToString()));
            cmd.Parameters.Add(new OracleParameter("vehicle_type", DropDownList1.SelectedItem.ToString()));
            cmd.Parameters.Add(new OracleParameter("registration_no", txtreg.Text));
            cmd.Parameters.Add(new OracleParameter("chasis_no",txtchasis.Text));
            cmd.Parameters.Add(new OracleParameter("company", txtcomp.Text));
            cmd.Parameters.Add(new OracleParameter("model", txtmodel.Text));
            cmd.Parameters.Add(new OracleParameter("customer_name", txtname.Text));
            cmd.Parameters.Add(new OracleParameter("mobile_no", txtmob.Text));
            cmd.Parameters.Add(new OracleParameter("email", txtmail.Text));
            cmd.Parameters.Add(new OracleParameter("address",txtadd.Text));
            cmd.Parameters.Add(new OracleParameter("birthday",Convert.ToDateTime( txtbirth.Text)));                //Convert.ToDateTime(br.ToString())
            cmd.Parameters.Add(new OracleParameter("service_type", DropDownList2.SelectedItem.ToString()));
            cmd.Parameters.Add(new OracleParameter("booking_date", Convert.ToDateTime( txtdate.Text)));            //Convert.ToDateTime(dt.ToString())
            cmd.Parameters.Add(new OracleParameter("service_workshop", DropDownList3.SelectedItem.ToString()));
            con.Open();
            int n = cmd.ExecuteNonQuery();
            con.Close();
            string pop1 = "alert('Thank you for BOOKING, your customer Reference Number is   " + Ref.ToString() + " . Please note it,for future use .........!!!.');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop1, true);

            //Response.Write(n + "records inserted");
        }

        catch (Exception ex)
        {

            string pop = "alert('there is some problem!!!." + ex.Message.ToString().Replace("'", " ").ToString() + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", pop, true);

            //Response.Write(ex.Message.ToString());
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        txtreg.Text = "";
        txtname.Text = "";
        txtmob.Text = "";
        txtchasis.Text = "";
        txtmail.Text = "";
        txtadd.Text = "";
        txtbirth.Text = "";
        txtcomp.Text = "";
        txtmodel.Text = "";
        DropDownList2.SelectedValue = "Select";
        txtdate.Text = "";
        DropDownList3.SelectedValue = "Select";

    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtbook_TextChanged(object sender, EventArgs e)
    {

    }
}