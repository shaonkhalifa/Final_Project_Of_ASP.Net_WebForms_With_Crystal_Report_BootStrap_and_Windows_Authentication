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
    
    public partial class tblSellerProductDetail
    {
        public int spdId { get; set; }
        public Nullable<int> seId { get; set; }
        public Nullable<int> slId { get; set; }
        public Nullable<int> atId { get; set; }
        public int quintity { get; set; }
    
        public virtual tblAnimalType tblAnimalType { get; set; }
        public virtual tblLocation tblLocation { get; set; }
        public virtual tblSeller tblSeller { get; set; }
    }
}
