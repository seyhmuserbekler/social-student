using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eYillik.Student
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (eYillikEntities veri = new eYillikEntities())
            {
                try
                {
                    var kullanici = veri.sys_ProfilSayfasiGetir(User.Identity.Name).FirstOrDefault();

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
                    username.Text = User.Identity.Name;
                    firstname.Text = kullanici.UserName;
                    lastname.Text = kullanici.UserSurname;

                    SqlConnection conn = new SqlConnection(@"Server=.\sqlexpress;Database=eYillik;Trusted_Connection=True;");

                    SqlCommand cmd1 = new SqlCommand("Select RememberContent from sys_Remembers as r inner join sys_Users as u on u.UserId = r.ToUser where u.UserNumber = '" + User.Identity.Name + "'", conn);

                    SqlDataAdapter da = new SqlDataAdapter(cmd1);

                    DataSet ds = new DataSet();

                    da.Fill(ds, "sys_Remember");

                    rptAni.DataSource = ds.Tables["sys_Remember"];
                    rptAni.DataBind();
                }
                catch { }
            }
        }
    }
}