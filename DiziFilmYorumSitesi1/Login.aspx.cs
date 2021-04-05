﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziFilmYorumSitesi1.Entity;
namespace DiziFilmYorumSitesi1
{
    public partial class Login : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBLADMIN where x.KULLANICI == TextBox1.Text && x.SIFRE == TextBox2.Text select x;

            if (sorgu.Any())
            {
                Session.Add("KULLANICI",TextBox1.Text);
                Response.Redirect("YoneticiAnasayfa.aspx");
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Hatalı Giriş Yaptınız')", true);
            }
        }
    }
}