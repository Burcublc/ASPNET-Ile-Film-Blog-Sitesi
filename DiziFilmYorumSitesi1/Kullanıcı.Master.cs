using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{ 
    public partial class Kullanıcı : System.Web.UI.MasterPage
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var baglanti = db.TBLBAGLANTI.ToList();

            Repeater1.DataSource = baglanti;
            Repeater1.DataBind();
        }
    }
}