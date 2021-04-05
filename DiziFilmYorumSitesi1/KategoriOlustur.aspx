<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="KategoriOlustur.aspx.cs" Inherits="DiziFilmYorumSitesi1.KategoriOlustur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card-header">
       <h4 class="card-title">KATEGORİ OLUŞTURMA SAYFASI</h4>
    </div>
   <div class="card-body">
   <div class="table-responsive">
        <form runat="server" class="form-group">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" PlaceHolder="Kategori İsmi Giriniz.." ></asp:TextBox>
            <br />            
            <asp:Button ID="Button1" runat="server" Text="EKLE"  CssClass="btn btn-primary" OnClick="Button1_Click"   />
        </form>
      </div>
   </div>
</asp:Content>
