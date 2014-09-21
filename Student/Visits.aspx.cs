using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eYillik.Student
{
    public partial class Visits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["UserName"] != null)
                {
                    String usrName = Request.QueryString["UserName"].ToString();

                    using (eYillikEntities veri = new eYillikEntities())
                    {
                        try
                        {
                            var kullanici = veri.sys_ProfilSayfasiGetir(usrName).FirstOrDefault();

                            imgAvatar.ImageUrl = kullanici.UserPicture;
                            spKullaniciAdi.Text = kullanici.UserName + " " + kullanici.UserSurname;
                            hypFacebook.NavigateUrl = kullanici.UserFacebook;
                            hypLinkedin.NavigateUrl = kullanici.UserLinkedin;
                            hypPlus.NavigateUrl = kullanici.UserGooglePlus;
                            hypTwitter.NavigateUrl = kullanici.UserTwitter;
                            hypGithub.NavigateUrl = kullanici.UserGithub;
                            hypPinterest.NavigateUrl = kullanici.UserPinterest;
                            lblKisisel.Text = kullanici.UserPersonal;
                            lblDostlar.Text = kullanici.UserFriend;
                            lblTavsiye.Text = kullanici.UserRecommend;
                            lblYeniden.Text = kullanici.UserRetry;
                        }
                        catch { }
                    }
                }
                else
                    Response.Redirect("~/Student/Profile.aspx");
            }
        }

        protected void btnYorum_Click(object sender, EventArgs e)
        {
            try
            {
                String toUsr = "";
                String fromUsr = "";

                SqlConnection conn = new SqlConnection(@"Server=.\sqlexpress;Database=eYillik;Trusted_Connection=True;");

                SqlCommand cmd1 = new SqlCommand("Select UserId from sys_Users where UserNumber = '" + Request.QueryString["UserName"].ToString() + "'", conn);
                SqlCommand cmd2 = new SqlCommand("Select UserId from sys_Users where UserNumber = '" + User.Identity.Name + "'", conn);

                conn.Open();

                SqlDataReader okuyucu1 = cmd1.ExecuteReader();

                if (okuyucu1.Read())
                {
                    toUsr = okuyucu1["UserId"].ToString();
                }

                okuyucu1.Close();

                SqlDataReader okuyucu2 = cmd2.ExecuteReader();

                if (okuyucu2.Read())
                {
                    fromUsr = okuyucu2["UserId"].ToString();
                }

                okuyucu2.Close();

                conn.Close();

                using (eYillikEntities veri = new eYillikEntities())
                {
                    sys_Remembers ani = new sys_Remembers()
                    {
                        ToUser = Guid.Parse(toUsr),
                        FromUser = Guid.Parse(fromUsr),
                        RememberContent = txtYorum.Text
                    };

                    veri.sys_Remembers.Add(ani);
                    veri.SaveChanges();
                }

                txtYorum.Text = "";
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}