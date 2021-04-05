<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="DiziFilmYorumSitesi1.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
  <div class="col-lg-8 top3">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <h3>HAKKIMIZDA</h3>
            <hr />
            <p><%# Eval("ACIKLAMA") %></p> 
		</ItemTemplate>
	</asp:Repeater>
  </div>
</asp:Content>
