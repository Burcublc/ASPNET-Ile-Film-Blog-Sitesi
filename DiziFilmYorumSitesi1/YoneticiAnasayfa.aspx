<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="YoneticiAnasayfa.aspx.cs" Inherits="DiziFilmYorumSitesi1.YoneticiAnasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
        <tr>
            <td>
                <b>TOPLAM BLOG SAYISI:</b><b><asp:Label ID="Label1" runat="server" Text="0"></asp:Label>  </b>             
            </td>
            <td>
                <b>TOPLAM YORUM SAYISI:</b><b><asp:Label ID="Label2" runat="server" Text="0"></asp:Label></b>               
            </td>
            <td>
                <b>TOPLAM FİLM SAYISI:</b><b><asp:Label ID="Label3" runat="server" Text="0"></asp:Label> </b>              
            </td>
        </tr>
        <tr>
            <td>
                <b>TOPLAM DİZİ SAYISI:</b><b><asp:Label ID="Label4" runat="server" Text="0"></asp:Label>  </b>             
            </td>
            <td>
                <b>TOPLAM ANİMASYON SAYISI:</b><b><asp:Label ID="Label5" runat="server" Text="0"></asp:Label>   </b>            
            </td>
            <td>
                <b>EN FAZLA YORUMLU BLOG:</b><b><asp:Label ID="Label6" runat="server" Text="0"></asp:Label>    </b>           
            </td>
        </tr>
    </table>
</asp:Content>
