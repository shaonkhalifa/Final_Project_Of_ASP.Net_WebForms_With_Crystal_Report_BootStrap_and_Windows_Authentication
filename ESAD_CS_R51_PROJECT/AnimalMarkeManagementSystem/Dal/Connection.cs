using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AnimalMarkeManagementSystem.Dal
{
    public  class Connection
    {
        public static string GetConnection()
        {
            string conobj = "Data source=DESKTOP-9VEOBD4;Initial Catalog=AMMSDB;Integrated Security=True";
            return conobj;
        }
    }
}