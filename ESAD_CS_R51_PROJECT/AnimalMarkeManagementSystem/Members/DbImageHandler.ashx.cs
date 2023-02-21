using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using AnimalMarkeManagementSystem.Dal;

namespace AnimalMarkeManagementSystem
{
    /// <summary>
    /// Summary description for DbImageHandler
    /// </summary>
    public class DbImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");
            string id = context.Request.QueryString["seId"];
            SqlConnection con = new SqlConnection(Connection.GetConnection());
            string sql = "SELECT photo FROM tblSeller WHERE seId="+ id;
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            byte[] imgData = (byte[])dr["photo"];
            con.Close();
            context.Response.BinaryWrite(imgData);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}