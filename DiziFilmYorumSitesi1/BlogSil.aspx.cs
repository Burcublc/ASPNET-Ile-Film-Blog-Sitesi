using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class BlogSil : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["BLOGID"]);//diğer sayfadan gelen değeri id değişkenine aktar
            var blog = db.TBLBLOG.Find(x);//bu id 'e ait sütunu bul
            db.TBLBLOG.Remove(blog);//o sütunu kaldır
            db.SaveChanges();//değişikleri kaydet
            Response.Redirect("YoneticiBlog.aspx");//bu sayfaya işlemini yaptıktan sonra git
        }
    }
}