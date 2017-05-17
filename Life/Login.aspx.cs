using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Life
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            //create a dbcontext that specified the connection string
            var identityDBContext = new IdentityDbContext("IdentityConnectionString");
            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDBContext);
            var manager = new UserManager<IdentityUser>(userStore);
            //Admin
            var roleStore = new RoleStore<IdentityRole>(identityDBContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            IdentityRole adminRole = new IdentityRole("enduser");
            roleManager.Create(adminRole);
            //create user
            var user = new IdentityUser() { UserName = TextBox1.Text, Email = TextBox1.Text };
            manager.Create(user, TextBox2.Text);

            manager.AddToRole(user.Id, "enduser");
            IdentityResult result = manager.Update(user);
            if (result.Succeeded)
            {
                //todo: Either authenticate the user (log them in) or redirect them to the login page to log in for themselves

                Literal1.Text = "An Successful has occured: ";
            }


            else

            {
                Literal2.Text = "An error has occured: " + result.Errors.FirstOrDefault();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtLoginEmail.Text, txtLoginPassword.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                Server.Transfer("PrivatePage.aspx", true);

            }
            else
            {
                Literal1.Text = "Invalid username or password.";

            }

        }

        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

            //Note: user is automatically redirected if trying to acess another page 

        }
    }
    }
