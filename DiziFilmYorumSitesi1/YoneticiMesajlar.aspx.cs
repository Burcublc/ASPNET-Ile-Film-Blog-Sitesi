using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class YoneticiMesajlar : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {           
            var blog = db.TBLILETISIM.ToList();            
            Repeater1.DataSource = blog;
            Repeater1.DataBind();
       
        }
    }
}