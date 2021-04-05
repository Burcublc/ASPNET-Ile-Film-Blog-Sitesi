using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class YorumSil : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var yorum = db.TBLYORUM.Find(id);
            db.TBLYORUM.Remove(yorum);
            db.SaveChanges();
            Response.Redirect("YoneticiYorum.aspx");
        }
    }
}