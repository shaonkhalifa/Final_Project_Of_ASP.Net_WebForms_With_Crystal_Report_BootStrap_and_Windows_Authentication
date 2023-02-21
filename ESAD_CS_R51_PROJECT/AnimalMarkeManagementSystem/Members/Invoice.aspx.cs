using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AnimalMarkeManagementSystem.Models;

namespace AnimalMarkeManagementSystem
{
    public partial class Invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<tblInvoice> ListView1_GetData()
        {
            AMMSDBEntities db = new AMMSDBEntities();
            return db.tblInvoices.AsQueryable();
        }


        public void ListView1_InsertItem(tblInvoice tbi)
        {
            AMMSDBEntities db = new AMMSDBEntities();
            db.tblInvoices.Add(tbi);
            db.SaveChanges();
        }

        public IQueryable<tblBuyer> ddlGetBuyerINfo()
        {
            AMMSDBEntities db = new AMMSDBEntities();
            return db.tblBuyers.AsQueryable();
        }

        public IQueryable<tblAnimalType> ddlAnimalType()
        {
            AMMSDBEntities db = new AMMSDBEntities();
            return db.tblAnimalTypes.AsQueryable();
        }

        public IQueryable<tblColor> ddl_colorInfo()
        {
            AMMSDBEntities db = new AMMSDBEntities();
            return db.tblColors.AsQueryable();
        }

        public IQueryable<tblSeller> ddl_sellerIno()
        {
            AMMSDBEntities db = new AMMSDBEntities();
            return db.tblSellers.AsQueryable();
        }
        // The id parameter name should match the DataKeyNames value set on the control
        public void ListView1_UpdateItem(tblInvoice tbi)
        {
            AMMSDBEntities db = new AMMSDBEntities();
            db.Entry(tbi).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void ListView1_DeleteItem(int invoiceID)
        {
            AMMSDBEntities db = new AMMSDBEntities();
            tblInvoice tbi = new tblInvoice { invoiceID = invoiceID };
            db.Entry(tbi).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {

        }
    }
}