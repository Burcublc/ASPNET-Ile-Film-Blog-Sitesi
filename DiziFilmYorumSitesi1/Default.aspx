<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DiziFilmYorumSitesi1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-8">
    <asp:Repeater ID="Repeater2" runat="server">
        <ItemTemplate> 
                <div class="col-md-12">
    	            <h1><a href="BlogDetay.aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval("BLOGBASLIK") %></a></h1>
                    <div class="entry-meta table">
        	            <span>
                        Written by
                        <a href="#">Rehman Ali</a>
                        </span>
                        <span> / </span>
                        <span> Fashion </span>
                        <span> / </span>
                        <span><%# Eval("BLOGTARIH") %></span>
                    </div>
                    <div>
        	            <img src="<%# Eval("BLOGGORSEL") %>" class="img-responsive" alt="fashion" style="height:300px ; width:500px" >
                    </div>
                    <div class="media">
        	            <p><%# Eval("BLOGICERIK") %></p>
                    </div>
                    <div class="read-more padding text-center">
            	            <a class="btn btn-default btn-hover" href="single-post.html" role="button">Devamını Oku...</a>
                    </div>
                </div>          
        </ItemTemplate>
   </asp:Repeater>
   </div>        
    <div class="col-md-4 top3">
            <div class="well">
                <h4>Ara..</h4>
                <div class="input-group">
                    <form id="form1" runat="server">
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                        <br />
                        <span class="input-group-btn">
                            <asp:Button ID="Button1" runat="server" Text="Ara" type="button" CssClass="btn btn-default" OnClick="Button1_Click"/>
                        </span>               
                    </form>
                 </div>
             </div>
              <div class="well">
                  <h4>Kategoriler</h4>
                  <div class="row">
                     <div class="col-lg-6">
                         <ul class="list-unstyled">
                             <asp:Repeater ID="Repeater1" runat="server">
                                 <ItemTemplate>
                                    <li><a href="KullaniciKategoriDetay.aspx?KATEGORIID=<%# Eval("KATEGORIID") %>"><%# Eval("KATEGORIAD") %></a></li>
                                 </ItemTemplate>
                            </asp:Repeater>
                            
                         </ul>
                     </div>
                   </div>
                  
              </div>   
             <div class="well">
                 <h4>En Son Bloglar</h4>
                 <div class="row">
                     <div class="col-lg-6">
                         <ul class="list-unstyled">
                             <asp:Repeater ID="Repeater3" runat="server">
                                 <ItemTemplate>
                                    <li><a href="#"><%# Eval("BLOGBASLIK") %></a></li>
                                 </ItemTemplate>
                             </asp:Repeater>                            
                         </ul>
                     </div>                   
                  </div>
              </div>
              <div class="well">
                  <h4>Son Yorumlar</h4>
                    <div class="row">
                     <div class="col-lg-6">
                         <ul class="list-unstyled">
                             <asp:Repeater ID="Repeater4" runat="server">
                                 <ItemTemplate>
                                    <li><%# Eval("KULLANICIAD") %></li>
                                 </ItemTemplate>
                             </asp:Repeater>                            
                         </ul>
                     </div>                   
                  </div>

              </div>
                         
        </div>
     
</asp:Content>

