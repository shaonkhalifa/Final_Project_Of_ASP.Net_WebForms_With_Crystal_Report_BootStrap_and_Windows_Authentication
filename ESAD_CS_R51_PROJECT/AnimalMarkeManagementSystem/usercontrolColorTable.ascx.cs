using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnimalMarkeManagementSystem
{
    public partial class usercontrolColorTable : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void refreshbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Members/frmMuiltiEntry.aspx");
            
        }

      
    }
}