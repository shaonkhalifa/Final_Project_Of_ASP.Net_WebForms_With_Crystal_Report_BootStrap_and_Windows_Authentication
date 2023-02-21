using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AnimalMarkeManagementSystem.Models
{
    public class BuyerInfo
    {
        public int buyerId { get; set; }
        public string name { get; set; }
        public DateTime dob { get; set; }
        public bool gender { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public string photo { get; set; }
        public string addres { get; set; }
    }
}