using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;

namespace ASP_Application2.Models
{
    public class Functions
    {
        private SqlConnection con;
        private SqlCommand cmd;
        private DataTable dt;
        private string cs;
        private SqlDataAdapter da;
        private SqlDataReader dr;
        private string config = ConfigurationManager.ConnectionStrings["Dbconnection"].ConnectionString;

        public Functions()
        {
            con = new SqlConnection(config);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }

        public int SetData(string Query)
        {
            int cnt = 0;
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.CommandText = Query;
            cnt = cmd.ExecuteNonQuery();
            con.Close();
            return cnt;
        }

        public DataTable GetData(string Query)
        {
            dt = new DataTable();
            da = new SqlDataAdapter(Query, con);
            da.Fill(dt);
            return dt;
        }

    }
}