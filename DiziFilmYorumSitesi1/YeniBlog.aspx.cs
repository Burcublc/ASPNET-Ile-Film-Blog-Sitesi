using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;

namespace DiziFilmYorumSitesi1
{
    public partial class YeniBlog : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                var turler = (from x in db.TBLTUR
                              select new
                              {
                                  x.TURAD,
                                  x.TURID
                              }).ToList();
                DropDownList1.DataSource = turler;
                DropDownList1.DataBind();

                var kategoriler = (from y in db.TBLKATEGORI
                                   select new
                                   {
                                       y.KATEGORIID,
                                       y.KATEGORIAD
                                   }).ToList();
                DropDownList2.DataSource = kategoriler;
                DropDownList2.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //ekleme işlemi
            TBLBLOG t = new TBLBLOG();
            t.BLOGBASLIK = TextBox1.Text;
            t.BLOGICERIK = TextBox2.Text;
            t.BLOGTARIH =DateTime.Parse(TextBox3.Text);
            t.BLOGGORSEL = TextBox4.Text;
            t.BLOGTUR = byte.Parse(DropDownList1.SelectedValue);
            t.BLOGKATEGORİ = byte.Parse(DropDownList2.SelectedValue);
            db.TBLBLOG.Add(t);
            db.SaveChanges();
            Response.Redirect("YoneticiBlog.aspx");

        }
    }
}