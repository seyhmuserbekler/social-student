using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eYillik.Student
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (eYillikEntities veri = new eYillikEntities())
            {
                try
                {
                    var album = veri.sys_AlbumleriGetir().ToList();

                    for (int i = 0; i < album.Count; i++)
                    {
                        drpAlbum.Items.Add(album[i].ToString());
                    }

                    var galeri = veri.sys_AlbumResimleriniGetir(drpAlbum.SelectedItem.ToString());

                    rptGaleri.DataSource = galeri.ToList();
                    rptGaleri.DataBind();
                }
                catch (Exception) { }
            }
        }

        protected void drpSirala_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drpSirala.SelectedIndex == 1)
            {
                using (eYillikEntities veri = new eYillikEntities())
                {
                    try
                    {
                        var album = veri.sys_AlbumResimleriniGetir(drpAlbum.SelectedItem.ToString());

                        rptGaleri.DataSource = album.ToList().OrderByDescending(x => x.AlbumName);
                        rptGaleri.DataBind();
                    }
                    catch (Exception) { }
                }
            }
            else
            {
                using (eYillikEntities veri = new eYillikEntities())
                {
                    try
                    {
                        var album = veri.sys_AlbumResimleriniGetir(drpAlbum.SelectedItem.ToString());

                        rptGaleri.DataSource = album.ToList().OrderBy(x => x.AlbumName);
                        rptGaleri.DataBind();
                    }
                    catch (Exception) { }
                }
            }
        }
    }
}