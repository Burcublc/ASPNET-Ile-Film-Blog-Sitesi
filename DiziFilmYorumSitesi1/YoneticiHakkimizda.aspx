<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="YoneticiHakkimizda.aspx.cs" Inherits="DiziFilmYorumSitesi1.YoneticiHakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-header">
       <h4 class="card-title">HAKKIMIZDA</h4>
   </div>
   <div class="card-body">
       <div class="table-responsive">
            <form runat="server" class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100"></asp:TextBox>      
                <br />
                <asp:Button ID="Button1" runat="server" Text="GÜNCELLE"  CssClass="btn btn-primary" OnClick="Button1_Click"/>
            </form>
      </div>
   </div>
</asp:Content>
