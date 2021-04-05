using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class KullaniciKategoriDetay : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id=Convert.ToInt32(Request.QueryString["KATEGORIID"]);

            var blogkategori = db.TBLBLOG.Where(x => x.BLOGKATEGORİ == id).ToList();

            Repeater2.DataSource = blogkategori;
            Repeater2.DataBind();


            var bloglar2 = db.TBLKATEGORI.ToList();
            Repeater1.DataSource = bloglar2;
            Repeater1.DataBind();

            var bloglar3 = db.TBLBLOG.Take(5).ToList();
            Repeater3.DataSource = bloglar3;
            Repeater3.DataBind();

            var bloglar4 = db.TBLYORUM.Take(5).ToList();
            Repeater4.DataSource = bloglar4;
            Repeater4.DataBind();
        }
    }
}