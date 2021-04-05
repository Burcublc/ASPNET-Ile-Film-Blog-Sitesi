using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class BlogDetay : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id =Convert.ToInt32( Request.QueryString["BLOGID"]);//default sayfasından gelen değer id değişkenine aktardık
            var blog = db.TBLBLOG.Where(x => x.BLOGID == id).ToList();//entity framework'te where komutu ile TBLBLOG tablosundaki BLOGID sütunundaki satırlardaki değerleri alınan değerle aynı mı şartı koyuyor, kouyuorsa listele
            Repeater1.DataSource = blog;
            Repeater1.DataBind();

            
            var blog2 = db.TBLYORUM.Where(x=>x.YORUMBLOG==id).ToList();
            Repeater2.DataSource = blog2;
            Repeater2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            TBLYORUM t = new TBLYORUM();
            t.KULLANICIAD = TextBox1.Text;
            t.MAIL = TextBox2.Text;
            t.YORUMICERIK = TextBox3.Text;
            t.YORUMBLOG = id;

            db.TBLYORUM.Add(t);//ekleme işlemi add metoduyla yapılıyo...
            db.SaveChanges();//executenonquery sorgusuyla aynı mantıkta çalışır
            Response.Redirect("BlogDetay.aspx?BLOGID="+id);
        }
    }
}