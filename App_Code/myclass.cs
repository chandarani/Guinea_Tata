using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;


/// <summary>
/// Summary description for myclass
/// </summary>
public class myclass
{
	public myclass()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static DataSet selectDb(String sql)
    {
        try
        {

            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["connection_tata"].ConnectionString);
            OracleDataAdapter da = new OracleDataAdapter(sql, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return (ds);


        }
        catch (Exception ex)
        {

            return (null);
        }
    }

}