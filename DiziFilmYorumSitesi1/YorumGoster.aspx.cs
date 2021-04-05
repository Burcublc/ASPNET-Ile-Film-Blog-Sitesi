using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class YorumGoster : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["YORUMID"]);
                var yorum = db.TBLYORUM.Find(id);
                TextBox1.Text = yorum.KULLANICIAD;
                TextBox2.Text = yorum.MAIL;
                TextBox5.Text = yorum.TBLBLOG.BLOGBASLIK;
                TextBox4.Text = yorum.YORUMICERIK;
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id2 = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var yorum = db.TBLYORUM.Find(id2);
            yorum.YORUMICERIK = TextBox4.Text;

            db.SaveChanges();
            Response.Redirect("YoneticiYorum.aspx");
        }
    }
}