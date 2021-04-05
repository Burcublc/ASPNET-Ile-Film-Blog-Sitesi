using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class TurSil : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["TURID"]);
            var tur = db.TBLTUR.Find(id);

            db.TBLTUR.Remove(tur);
            db.SaveChanges();
            Response.Redirect("YoneticiTur.aspx");
        }
    }
}