using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class KategoriOlustur : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLKATEGORI tb = new TBLKATEGORI();
            tb.KATEGORIAD = TextBox1.Text;

            db.TBLKATEGORI.Add(tb);
            db.SaveChanges();
            Response.Redirect("YoneticiKategori.aspx");
        }
    }
}