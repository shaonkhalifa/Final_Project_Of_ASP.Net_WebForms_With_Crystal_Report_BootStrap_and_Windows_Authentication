//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AnimalMarkeManagementSystem.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblInvoice
    {
        public int invoiceID { get; set; }
        public System.DateTime invoiceDate { get; set; }
        public Nullable<int> bId { get; set; }
        public Nullable<int> atId { get; set; }
        public Nullable<int> cId { get; set; }
        public Nullable<int> seId { get; set; }
        public decimal price { get; set; }
        public decimal commission { get; set; }
    
        public virtual tblAnimalType tblAnimalType { get; set; }
        public virtual tblBuyer tblBuyer { get; set; }
        public virtual tblColor tblColor { get; set; }
        public virtual tblSeller tblSeller { get; set; }
    }
}
