using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eYillik
{
    public partial class Default1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (eYillikEntities veri = new eYillikEntities())
            {
                try
                {
                    var sohbet = veri.sys_SohbetGetir();

                    rptSohbet.DataSource = sohbet;
                    rptSohbet.DataBind();
                }
                catch (Exception) { }
            }
        }

        protected void lnkCikis_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}