using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class YoneticiHakkimizda : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                var hakkimizda = db.TBLHAKKIMIZDA.Find(1);
                TextBox1.Text = hakkimizda.ACIKLAMA;
            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //düzenleme butonu için...
            var hakkimizda = db.TBLHAKKIMIZDA.Find(1);
            hakkimizda.ACIKLAMA = TextBox1.Text;
            db.SaveChanges();
            Response.Redirect("YoneticiHakkimizda.aspx");
        }
    }
}