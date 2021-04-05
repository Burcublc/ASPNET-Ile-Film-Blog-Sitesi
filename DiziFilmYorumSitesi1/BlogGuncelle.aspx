<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="BlogGuncelle.aspx.cs" Inherits="DiziFilmYorumSitesi1.BlogGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-header">
       <h4 class="card-title">BLOG GÜNCELLE</h4>
    </div>
   <div class="card-body">
   <div class="table-responsive">
        <form runat="server" class="form-group">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="BAŞLIK"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="İÇERİK" Height="100px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="TARİH"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="GÖRSEL"></asp:TextBox>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataTextField="TURAD" DataValueField="TURID"></asp:DropDownList>
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataTextField="KATEGORIAD" DataValueField="KATEGORIID"></asp:DropDownList>
            <br />    
            <asp:Button ID="Button1" runat="server" Text="GÜNCELLE"  CssClass="btn btn-primary" OnClick="Button1_Click" />
        </form>
      </div>
   </div>
</asp:Content>
