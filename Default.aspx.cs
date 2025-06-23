using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Emailsender
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
            protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                string senderEmail = txtSender.Text.ToLower();
                string receiverEmail = txtReceiver.Text.ToLower();
                string subject = txtSubject.Text.ToUpper();
                string message = txtMessage.Text;

                MailMessage mail = new MailMessage();
                mail.From = new MailAddress(senderEmail);
                mail.To.Add(receiverEmail);
                mail.Subject = subject;
                mail.Body = message;

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new NetworkCredential("your_email@anu.ac.ke", "your_app_password");
                smtp.EnableSsl = true;

                smtp.Send(mail);
                lblStatus.ForeColor = System.Drawing.Color.Green;
                lblStatus.Text = "✅ Email sent successfully!";
            }
            catch (Exception ex)
            {
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Text = "❌ Error: " + ex.Message;
            }
        }
    }
}
