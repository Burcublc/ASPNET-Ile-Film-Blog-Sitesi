<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="DiziFilmYorumSitesi1.BlogDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="col-lg-8">
            <asp:Repeater ID="Repeater1" runat="server">
               <ItemTemplate>
                    <div class="col-md-12">
    	                <h1><%# Eval("BLOGBASLIK") %></h1>
                        <div class="entry-meta table">  
                            <span> <%# Eval("BLOGTARIH") %></span>
                        </div>
                        <div>
        	                <img src="<%# Eval("BLOGGORSEL") %>" class="img-responsive" alt="fashion" style="height:350px ; width:800px" >
                        </div>
                        <div class="media">
        	                <p><%# Eval("BLOGICERIK") %></p>
                        </div>      
                    </div> 
               </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="col-md-4 top3">                                        
         </div>
         <div class="container">
              <div class="row">
                <div class="col-md-8">
                  <h2 class="page-header">Yorumlar</h2>
                    <section class="comment-list">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                              <div class="row">
                                <div class="col-md-2 col-sm-2 hidden-xs">
                                  <figure class="thumbnail">
                                    <img class="img-responsive" src="KullaniciDosyalar/images/kisiemoji.png" style="height:30px;width:30px">
                                   
                                  </figure>
                                </div>
                                <div class="col-md-10 col-sm-10">
                                  <div class="panel panel-default arrow left">
                                    <div class="panel-body">
                                      <header class="text-left">
                                        <div class="comment-user"><i class="fa fa-user"></i> <%# Eval("KULLANICIAD") %></div>                                        
                                      </header>
                                      <div class="comment-post">
                                        <p>
                                          <%# Eval("YORUMICERIK") %>
                                        </p>
                                      </div>
                                      <p class="text-right"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-reply"></i> reply</a></p>
                                    </div>
                                  </div>
                                </div>
                              </div>

                            </ItemTemplate>
                       </asp:Repeater>                             
                    </section>
                </div>
              </div>
        </div>
      <div class="container">
              <div class="row">
                 <div class="col-lg-8">
                    <h2 class="page-header">Yorum Gönder</h2>
                    <form class="form-horizontal"  runat="server">
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">İsim</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Ad & Soyad" required=""></asp:TextBox>                                
                                <p class='text-danger'></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Mail Adresi</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Mail Adresi" TextMode="Email" required=""></asp:TextBox>                             
                                <p class='text-danger'></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="message" class="col-sm-2 control-label">Mesaj</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TextBox3" runat="server"  class="form-control" placeholder="Yorum Yazınız..."  required="" TextMode="MultiLine" Rows="10"></asp:TextBox>                            
                                <p class='text-danger'></p>
                            </div>
                        </div>                       
                        <div class="form-group">
                            <div class="col-sm-10 col-sm-offset-2">
                                <asp:Button ID="Button1" runat="server" Text="Gönder" class="btn btn-default btn-hover" OnClick="Button1_Click"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10 col-sm-offset-2">
                           
                            </div>
                        </div>
                    </form> 
               </div>
            </div>
       </div>
</asp:Content>
