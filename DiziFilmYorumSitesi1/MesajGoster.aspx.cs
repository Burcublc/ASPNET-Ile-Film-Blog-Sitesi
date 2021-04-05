using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class MesajGoster : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["MESAJID"]);

            var blog = db.TBLILETISIM.Find(id);
            TextBox1.Text = blog.ADSOYAD;
            TextBox2.Text = blog.MAIL;
            TextBox3.Text = blog.TELEFON;
            TextBox4.Text = blog.KONU;
            TextBox5.Text = blog.MESAJ;
            if (blog.SECENEK.ToString() == "False")
            {
                CheckBox1.Checked = true;
                blog.SECENEK = true;
                db.SaveChanges();
            }          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("YoneticiMesajlar.aspx");
        }
    }
}