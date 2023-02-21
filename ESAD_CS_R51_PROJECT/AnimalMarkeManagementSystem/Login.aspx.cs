using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnimalMarkeManagementSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

  

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var store = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(store);
            var user = manager.Find(this.txtloginemail.Text, this.txtloginPassword.Text);
            //var AltUser = manager.Find(this.txtloginemail.Text, this.txtloginPassword.Text);

            if (user!=null )/*|| AltUser != null*/
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