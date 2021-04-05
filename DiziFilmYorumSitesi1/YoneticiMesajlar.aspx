<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="YoneticiMesajlar.aspx.cs" Inherits="DiziFilmYorumSitesi1.YoneticiMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="card-header">
       <h4 class="card-title">MESAJ LİSTESİ</h4>
   </div>
    <div class="card-body">
     <div class="table-responsive">
         <table class="table">
             <thead class=" text-primary">
                 <th style="height: 54px">ID</th>
                 <th style="height: 54px">AD VE SOYAD</th>
                 <th style="height: 54px">KONU</th>
                 <th style="height: 54px">DURUM</th>
                 <th class="text-right" style="height: 54px">İŞLEMLER</th>
              </thead>
              <tbody>
               <asp:Repeater ID="Repeater1" runat="server">
                   <ItemTemplate>
                     <tr>
                         <td><%# Eval("MESAJID") %></td>
                         <td><%# Eval("ADSOYAD") %></td>
                         <td><%# Eval("KONU") %></td>
                         <td><b><%# Eval("SECENEK") %></b></td>
                         <td class="text-right">
                             <asp:HyperLink ID="HyperLink1" runat="server"  CssClass="btn btn-warning" NavigateUrl='<%# "MesajGoster.aspx?MESAJID="+ Eval("MESAJID") %>'>GÖSTER</asp:HyperLink>
                             <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "MesajSil.aspx?MESAJID="+ Eval("MESAJID") %>'>SİL</asp:HyperLink>                            
                         </td>
                      </tr>
                  </ItemTemplate>
               </asp:Repeater>
                </tbody>
              </table>     
         </div>
        </div>
</asp:Content>
