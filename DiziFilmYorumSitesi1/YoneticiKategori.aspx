<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="YoneticiKategori.aspx.cs" Inherits="DiziFilmYorumSitesi1.YoneticiKategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="card-header">
       <h4 class="card-title">KATEGORİ LİSTESİ</h4>
   </div>
   
    <div class="card-body">
     <div class="table-responsive">
        <a href="KategoriOlustur.aspx" class="btn btn-primary">Yeni Kategori Oluştur</a>
         <table class="table">
             <thead class=" text-primary">
                 <th style="height: 54px">ID</th>
                 <th style="height: 54px">KATEGORİ ADI</th>
                 <th class="text-right" style="height: 54px">İŞLEMLER</th>
              </thead>
              <tbody>
               <asp:Repeater ID="Repeater1" runat="server">
                   <ItemTemplate>
                     <tr>
                         <td><%# Eval("KATEGORIID") %></td>
                         <td><%# Eval("KATEGORIAD") %></td>
                         <td class="text-right">
                             <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "KategoriSil.aspx?KATEGORIID="+ Eval("KATEGORIID") %>'>SİL</asp:HyperLink>                            
                         </td>
                      </tr>
                  </ItemTemplate>
               </asp:Repeater>
                </tbody>
              </table>     
              
         </div>
        </div>
</asp:Content>
