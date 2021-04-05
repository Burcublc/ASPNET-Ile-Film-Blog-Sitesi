<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="YoneticiBlog.aspx.cs" Inherits="DiziFilmYorumSitesi1.YoneticiBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-header">
       <h4 class="card-title">DİZİ / FİLM LİSTESİ</h4>
   </div>
   <div class="card-body">
     <div class="table-responsive">
         <table class="table">
             <thead class=" text-primary">
                 <th style="height: 54px">ID</th>
                 <th style="height: 54px">DİZİ / FİLM İSMİ</th>
                 <th style="height: 54px">TARİH</th>
                 <th style="height: 54px">TÜR</th>
                 <th style="height: 54px">KATEGORİ</th>
                 <th class="text-right" style="height: 54px">İŞLEMLER</th>
              </thead>
              <tbody>
               <asp:Repeater ID="Repeater1" runat="server">
                   <ItemTemplate>
                     <tr>
                         <td><%# Eval("BLOGID") %></td>
                         <td><%# Eval("BLOGBASLIK") %></td>
                         <td><%# Eval("BLOGTARIH") %></td>
                         <td><%# Eval("TURAD") %></td>
                         <td><%# Eval("KATEGORIAD") %></td>
                         <td class="text-right">
                             <asp:HyperLink ID="HyperLink1" runat="server"  CssClass="btn btn-warning" NavigateUrl='<%# "BlogGuncelle.aspx?BLOGID="+ Eval("BLOGID") %>'>GÜNCELLE</asp:HyperLink>
                             <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "BlogSil.aspx?BLOGID="+ Eval("BLOGID") %>'>SİL</asp:HyperLink>                            
                         </td>
                      </tr>
                  </ItemTemplate>
               </asp:Repeater>
                </tbody>
              </table>     
              <a href="YeniBlog.aspx" class="btn btn-primary">YENİ OLUŞTUR</a>
         </div>
        </div>
</asp:Content>
