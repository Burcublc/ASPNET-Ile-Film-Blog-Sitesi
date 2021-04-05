<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="MesajGoster.aspx.cs" Inherits="DiziFilmYorumSitesi1.MesajGoster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card-header">
       <h4 class="card-title">MESAJ DETAYLARI</h4>
    </div>
   <div class="card-body">
   <div class="table-responsive">
        <form runat="server" class="form-group">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  Enabled="false"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="false" ></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"  Enabled="false"></asp:TextBox>
            <br />        
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"  Enabled="false" ></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"  Enabled="false" TextMode="MultiLine" Height="100"></asp:TextBox>      
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Enabled="false" Visible="False"  />
            <br />
            <asp:Button ID="Button1" runat="server" Text="GERİ DÖN"  CssClass="btn btn-primary" OnClick="Button1_Click"/>
        </form>
      </div>
   </div>
</asp:Content>
