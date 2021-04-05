<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="YoneticiIletisim.aspx.cs" Inherits="DiziFilmYorumSitesi1.YoneticiIletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card-header">
       <h4 class="card-title">İLETİŞİM BİLGİLERİ</h4>
   </div>
   <div class="card-body">
       <div class="table-responsive">
            <form runat="server" class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100" PlaceHolder="Ev/Ofis Adres Giriniz..."></asp:TextBox>      
                <br />
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" PlaceHolder="Facebook Adresi Giriniz..."></asp:TextBox>      
                <br />
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" PlaceHolder="İnstagram Adresi Giriniz..." ></asp:TextBox>      
                <br />
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" PlaceHolder="Twittter Adresi Giriniz..."></asp:TextBox>      
                <br />
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" PlaceHolder="Linkedin Adresi Giriniz..." ></asp:TextBox>      
                <br />
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" PlaceHolder="Telefon Numarası Giriniz" ></asp:TextBox>      
                <br />
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" PlaceHolder="Fax Numarası Giriniz" ></asp:TextBox>    
                <br />
                <asp:Button ID="Button1" runat="server" Text="GÜNCELLE"  CssClass="btn btn-primary" OnClick="Button1_Click" />
            </form>
      </div>
   </div>
</asp:Content>
