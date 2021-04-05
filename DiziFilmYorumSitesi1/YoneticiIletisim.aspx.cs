using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class YoneticiIletisim : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                var baglanti = db.TBLBAGLANTI.Find(1);
                TextBox1.Text = baglanti.ADRES;
                TextBox2.Text = baglanti.FACEBOOK;
                TextBox3.Text = baglanti.INSTAGRAM;
                TextBox4.Text = baglanti.TWITTER;
                TextBox5.Text = baglanti.LINKEDIN;
                TextBox6.Text = baglanti.TELEFON;
                TextBox7.Text = baglanti.FAX;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var baglanti = db.TBLBAGLANTI.Find(1);
            baglanti.ADRES = TextBox1.Text;
            baglanti.FACEBOOK = TextBox2.Text;
            baglanti.INSTAGRAM = TextBox3.Text;
            baglanti.TWITTER = TextBox4.Text;
            baglanti.LINKEDIN = TextBox5.Text;
            baglanti.TELEFON = TextBox6.Text;
            baglanti.FAX = TextBox7.Text;

            db.SaveChanges();
            Response.Redirect("YoneticiIletisim.aspx");
        }
    }
}