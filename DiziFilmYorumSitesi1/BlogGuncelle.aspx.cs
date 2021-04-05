using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class BlogGuncelle : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //değerleri getirme
            int id= Convert.ToInt32(Request.QueryString["BLOGID"]);
                      
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

                var blog = db.TBLBLOG.Find(id);
                TextBox1.Text = blog.BLOGBASLIK.ToString();
                TextBox2.Text = blog.BLOGICERIK.ToString();
                TextBox3.Text = blog.BLOGTARIH.ToString();
                TextBox4.Text = blog.BLOGGORSEL.ToString();
                DropDownList1.SelectedValue = blog.BLOGTUR.ToString();
                DropDownList2.SelectedValue = blog.BLOGKATEGORİ.ToString();
            }

           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //GÜNCELLEME İŞİ
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var blog = db.TBLBLOG.Find(id);
            blog.BLOGBASLIK = TextBox1.Text;
            blog.BLOGICERIK = TextBox2.Text;
            blog.BLOGTARIH =DateTime.Parse(TextBox3.Text);
            blog.BLOGGORSEL = TextBox4.Text;
            blog.BLOGTUR = byte.Parse(DropDownList1.SelectedValue);
            blog.BLOGKATEGORİ = byte.Parse(DropDownList2.SelectedValue);

            db.SaveChanges();
            Response.Redirect("YoneticiBlog.aspx");
        }
    }
}