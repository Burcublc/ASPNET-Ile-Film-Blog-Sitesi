using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class YoneticiBlog : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var blod=db.TBLBLOG.ToList();
            var blog = (from x in db.TBLBLOG
                        select new
                        {
                            x.BLOGID,
                            x.BLOGBASLIK,
                            x.BLOGTARIH,
                            x.TBLTUR.TURAD,
                            x.TBLKATEGORI.KATEGORIAD
                        }).ToList();
            Repeater1.DataSource = blog;
            Repeater1.DataBind();
          
        }       
    }
}