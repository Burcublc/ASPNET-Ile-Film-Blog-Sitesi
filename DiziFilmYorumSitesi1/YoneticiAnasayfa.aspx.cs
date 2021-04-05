using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class YoneticiAnasayfa : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Session["KULLANICI"].ToString());
            if (Session["KULLANICI"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                Response.Write("HoşGeldiniz:" + Session["KULLANICI"].ToString());
            }
            //linq sorgular ile istatistik yapmak..
            Label1.Text = db.TBLBLOG.Count().ToString();

            Label2.Text = db.TBLYORUM.Count().ToString();

            Label3.Text = db.TBLBLOG.Where(x => x.BLOGTUR == 2).Count().ToString();

            Label4.Text = db.TBLBLOG.Where(x => x.TBLTUR.TURAD == "Dizi").Count().ToString();

            Label5.Text = db.TBLBLOG.Where(x => x.TBLTUR.TURAD == "Animasyon").Count().ToString();

            Label6.Text =db.TBLBLOG.Where(z => z.BLOGID == (db.TBLYORUM.GroupBy(x => 
            x.YORUMBLOG).OrderByDescending(x => x.Count()).Select(y => y.Key).FirstOrDefault())).Select(k=>
            k.BLOGBASLIK).FirstOrDefault();
        }
    }
}