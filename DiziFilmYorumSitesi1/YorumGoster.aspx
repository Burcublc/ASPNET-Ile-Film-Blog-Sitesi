<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="YorumGoster.aspx.cs" Inherits="DiziFilmYorumSitesi1.YorumGoster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-header">
       <h4 class="card-title">YORUM DETAYLARI</h4>
    </div>
   <div class="card-body">
   <div class="table-responsive">
        <form runat="server" class="form-group">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  Enabled="false"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="false" ></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"  Enabled="false"></asp:TextBox>  
            <br />
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="YORUM" TextMode="MultiLine" Height="100"></asp:TextBox>
            <br />            
            <asp:Button ID="Button1" runat="server" Text="DÜZELT"  CssClass="btn btn-primary" OnClick="Button1_Click"  />
        </form>
      </div>
   </div>
</asp:Content>
