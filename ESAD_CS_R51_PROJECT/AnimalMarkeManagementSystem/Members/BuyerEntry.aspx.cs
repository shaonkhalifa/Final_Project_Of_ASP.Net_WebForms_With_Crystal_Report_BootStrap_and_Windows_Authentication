using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnimalMarkeManagementSystem
{
    public partial class BuyerEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            FileUpload fu = DetailsView1.FindControl("fuUplode") as FileUpload;
            if (fu.HasFile)
            {
                string fileName = Guid.NewGuid() + "_" + Path.GetExtension(fu.FileName);
                fu.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
                e.Values["photo"] = fileName;

            }
        }

        protected void Unnamed1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            RadioButton rbm = DetailsView1.FindControl("rbtnMale") as RadioButton;

            RadioButton rbf = (RadioButton)DetailsView1.FindControl("rbtnFemale");

            if (rbm.Checked || rbf.Checked)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            Response.Redirect("BuyerShow.aspx");
        }
    }
}