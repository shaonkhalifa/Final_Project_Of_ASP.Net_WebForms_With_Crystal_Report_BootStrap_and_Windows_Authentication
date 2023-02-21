using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnimalMarkeManagementSystem
{
    public partial class usercontrolAnimalType : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void refreshbtnAnimal_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Members/frmMuiltiEntry.aspx");
        }

        protected void frmAnimalType_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            //Response.Redirect("~/Members/frmMuiltiEntry.aspx");
        }
    }
}