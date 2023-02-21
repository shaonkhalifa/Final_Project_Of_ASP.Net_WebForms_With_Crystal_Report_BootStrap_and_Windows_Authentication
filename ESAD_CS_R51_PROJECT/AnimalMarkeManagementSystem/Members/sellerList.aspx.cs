using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnimalMarkeManagementSystem
{
    public partial class sellerList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            FileUpload fu = GridView1.Rows[e.RowIndex].FindControl("fuUploder") as FileUpload;
            if (fu!=null)
            {
                if (fu.PostedFile.ContentLength>0)
                {
                    
                    e.NewValues["photo"] = fu.FileBytes;
                }
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    if (e.Row.Cells[2]== )
            //    {

            //    }
            //}
        }
    }
}