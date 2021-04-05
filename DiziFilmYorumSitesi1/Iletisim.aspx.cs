using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class Iletisim : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLILETISIM t = new TBLILETISIM();
            t.ADSOYAD = TextBox1.Text;
            t.MAIL = TextBox2.Text;
            t.TELEFON = TextBox4.Text;
            t.KONU = TextBox5.Text;
            t.MESAJ = TextBox3.Text;

            db.TBLILETISIM.Add(t);
            db.SaveChanges();
            Response.Redirect("Iletisim.aspx");
        }
    }
}