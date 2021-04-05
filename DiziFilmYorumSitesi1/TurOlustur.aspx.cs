using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class TurOlustur : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLTUR tb = new TBLTUR();
            tb.TURAD = TextBox1.Text;
            db.TBLTUR.Add(tb);
            db.SaveChanges();
            Response.Redirect("YoneticiTur.aspx");
        }
    }
}