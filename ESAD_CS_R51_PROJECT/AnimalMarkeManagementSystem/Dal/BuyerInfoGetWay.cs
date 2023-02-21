using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using AnimalMarkeManagementSystem.Models;

namespace AnimalMarkeManagementSystem.Dal
{
    public class BuyerInfoGetWay
    {
        SqlConnection conn = new SqlConnection(Connection.GetConnection());

        public IQueryable<BuyerInfo> infos()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter("select * from tblBuyer",conn);
            sda.Fill(dt);
            return dt.AsEnumerable().Select(b => new BuyerInfo
            {
                buyerId = b.Field<int>("bId"),
                name = b.Field<string>("buyerName"),
                dob = b.Field<DateTime>("dob"),
                gender = b.Field<bool>("gender"),
                phone = b.Field<string>("phone"),
                email = b.Field<string>("email"),
                photo = b.Field<string>("photo"),
                addres = b.Field<string>("bAddress"),  
            }).AsQueryable();
        }
        public void Insert(BuyerInfo b)
        {
            SqlCommand scm = new SqlCommand("INSERT INTO tblBuyer VALUES (@n,@dob,@g,@p,@e,@photo,@a)", conn);
            scm.Parameters.AddWithValue("@n", b.name);
            scm.Parameters.AddWithValue("@dob", b.dob);
            scm.Parameters.AddWithValue("@g", b.gender);
            scm.Parameters.AddWithValue("@p", b.phone);
            scm.Parameters.AddWithValue("@e", b.email);
            scm.Parameters.AddWithValue("@photo", b.photo);
            scm.Parameters.AddWithValue("@a", b.addres);
           
            conn.Open();
            scm.ExecuteNonQuery();
            conn.Close();
        }

        public void Update(BuyerInfo b)
        {
            SqlCommand scm = new SqlCommand("UPDATE tblBuyer SET buyerName=@n,dob=@dob,gender=@g,phone=@p,email=@e,photo=@photo,bAddress=@a WHERE bId=@i", conn);
            scm.Parameters.AddWithValue("@i", b.buyerId);
            scm.Parameters.AddWithValue("@n", b.name);
            scm.Parameters.AddWithValue("@dob", b.dob);
            scm.Parameters.AddWithValue("@g", b.gender);
            scm.Parameters.AddWithValue("@p", b.phone);
            scm.Parameters.AddWithValue("@e", b.email);
            scm.Parameters.AddWithValue("@photo", b.photo);
            scm.Parameters.AddWithValue("@a", b.addres);
            conn.Open();
            scm.ExecuteNonQuery();
            conn.Close();
        }

        public void Delete(BuyerInfo b)
        {
            SqlCommand scm = new SqlCommand(@"DELETE tblBuyer WHERE bId=@i", conn);
            scm.Parameters.AddWithValue("@i", b.buyerId);
            conn.Open();
            scm.ExecuteNonQuery();
            conn.Close();
        }
    }
}