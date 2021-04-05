using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class MesajSil : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["MESAJID"]);
            var blog = db.TBLILETISIM.Find(id);

            db.TBLILETISIM.Remove(blog);
            db.SaveChanges();
            Response.Redirect("YoneticiMesajlar.aspx");
        }
    }
}