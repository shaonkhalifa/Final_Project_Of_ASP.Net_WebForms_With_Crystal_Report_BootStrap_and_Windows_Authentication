using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;

namespace AnimalMarkeManagementSystem
{
    public partial class FrnRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            var store = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(store);
            var user = new IdentityUser { UserName = this.txtUserName.Text };
            //var AltUser = new IdentityUser { UserName = this.txtmail.Text };
            var created = manager.Create(user, this.txtpassword.Text);
            //var altCreated = manager.Create(AltUser, this.txtpassword.Text);
            if (created.Succeeded )/*|| AltUser != null*/
            {
                
                var authManager = HttpContext.Current.GetOwinContext().Authentication;
                authManager.SignIn(new AuthenticationProperties(), manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie));
                //var altAuthManager = HttpContext.Current.GetOwinContext().Authentication;
                //altAuthManager.SignIn(new AuthenticationProperties(), manager.CreateIdentity(AltUser, DefaultAuthenticationTypes.ApplicationCookie));
                Response.Redirect("~/Default.aspx");
            }

            else
            {
                this.Panel1.Visible = true;
            }

        }
    }
}