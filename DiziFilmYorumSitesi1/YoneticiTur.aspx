<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="YoneticiTur.aspx.cs" Inherits="DiziFilmYorumSitesi1.YoneticiTur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card-header">
       <h4 class="card-title">TÜR LİSTESİ</h4>
   </div>
   
    <div class="card-body">
     <div class="table-responsive">
        <a href="TurOlustur.aspx" class="btn btn-primary">Yeni Tür Oluştur</a>
         <table class="table">
             <thead class=" text-primary">
                 <th style="height: 54px">ID</th>
                 <th style="height: 54px">TÜR ADI</th>
                 <th class="text-right" style="height: 54px">İŞLEMLER</th>
              </thead>
              <tbody>
               <asp:Repeater ID="Repeater1" runat="server">
                   <ItemTemplate>
                     <tr>
                         <td><%# Eval("TURID") %></td>
                         <td><%# Eval("TURAD") %></td>
                         <td class="text-right">
                             <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "TurSil.aspx?TURID="+ Eval("TURID") %>'>SİL</asp:HyperLink>                            
                         </td>
                      </tr>
                  </ItemTemplate>
               </asp:Repeater>
                </tbody>
              </table>     
              
         </div>
        </div>
</asp:Content>
