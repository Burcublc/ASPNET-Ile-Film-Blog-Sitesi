using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity; //Modeli Projemize dahil ediyoruz
using System.Data.SqlClient;
using System.Data;
namespace DiziFilmYorumSitesi1
{
    public partial class Default : System.Web.UI.Page
    {
        //SqlConnection baglanti = new SqlConnection("Data Source=ADA\\SQLEXPRESS;Initial Catalog=BlogDizi;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
        BlogDiziEntities db = new BlogDiziEntities();//veritabanımızdaki bu modeli tutan entitynin ismi BlogDiziEntities'dir. BU türden bir nesne olusturyoruz 
   
        protected void Page_Load(object sender, EventArgs e)
        {
            var bloglar = db.TBLBLOG.ToList();//değişken türünün var olmasının sebebi birden fazla değişken türü olduğu için bütün değişkenleri sağlayan değişken tipi olan var değişkenini seçtik.
                                              //db nesnesiyle TBLBLOG tablosuna bağlanıp içerisindeki listele diyoruz.
            Repeater2.DataSource = bloglar;//repeater kaynağını bloglar değişkeninden alacak
            Repeater2.DataBind();//repetear 'a verileri bağlama işlemi gerçekleştirdik.

            var bloglar2 = db.TBLKATEGORI.ToList();
            Repeater1.DataSource = bloglar2;
            Repeater1.DataBind();

            var bloglar3 = db.TBLBLOG.Take(5).ToList();
            Repeater3.DataSource = bloglar3;
            Repeater3.DataBind();

            var bloglar4 = db.TBLYORUM.Take(5).ToList();
            Repeater4.DataSource = bloglar4;
            Repeater4.DataBind();

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //HaberleriGetir(TextBox1.Text);
            
           
        }
 /*       void HaberleriGetir(string aranan)
        {
          
            baglanti.Open();
            SqlCommand arama = new SqlCommand("Select BLOGID From TBLBLOG Where BLOGBASLIK like '%" + aranan + "%'", baglanti);
            DataTable td = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(arama);
            adapter.Fill(td);
            
            Response.Redirect("BlogDetay.aspx?BLOGID=" + td);
            baglanti.Close();
     
        }*/
    }
}