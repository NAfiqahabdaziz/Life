using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Life
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("lcbchester1525598@gmail.com", "Love2017");
            smtpClient.Credentials = credentials;


            MailMessage msg = new MailMessage("lcbchester1525598@gmail.com", TextBox2.Text);
            msg.Subject = "Name:" + TextBox5.Text + "Subject" + TextBox3.Text;
            msg.Body = TextBox4.Text;
            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
                Literal1.Text =
                    "<p>Success, mail send Using SMTP with secure connection and credentials</p>";


            }
            catch (Exception ex)
            {
                //display the full error to the user
                Literal1.Text =
                    "<p>Send failed:" + ex.Message + ":" + ex.InnerException + "</p>";

            }
        
    }
    }
}