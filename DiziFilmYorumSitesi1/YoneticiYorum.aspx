<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="YoneticiYorum.aspx.cs" Inherits="DiziFilmYorumSitesi1.YoneticiYorum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-header">
       <h4 class="card-title">YORUM LİSTESİ</h4>
   </div>
    <div class="card-body">
     <div class="table-responsive">
         <table class="table">
             <thead class=" text-primary">
                 <th style="height: 54px">ID</th>
                 <th style="height: 54px">AD VE SOYAD</th>
                 <th style="height: 54px">BLOG İSMİ</th>        
                 <th class="text-right" style="height: 54px">İŞLEMLER</th>
              </thead>
              <tbody>
               <asp:Repeater ID="Repeater1" runat="server">
                   <ItemTemplate>
                     <tr>
                         <td><%# Eval("YORUMID") %></td>
                         <td><%# Eval("KULLANICIAD") %></td>
                         <td><%# Eval("BLOGBASLIK") %></td>
                         <td class="text-right">
                             <asp:HyperLink ID="HyperLink1" runat="server"  CssClass="btn btn-warning" NavigateUrl='<%# "YorumGoster.aspx?YORUMID="+ Eval("YORUMID") %>'>GÖSTER</asp:HyperLink>
                             <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "YorumSil.aspx?YORUMID="+ Eval("YORUMID") %>'>SİL</asp:HyperLink>                            
                         </td>
                      </tr>
                  </ItemTemplate>
               </asp:Repeater>
                </tbody>
              </table>     
         </div>
        </div>
</asp:Content>
