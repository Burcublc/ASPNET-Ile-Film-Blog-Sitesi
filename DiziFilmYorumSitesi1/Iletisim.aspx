<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="DiziFilmYorumSitesi1.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="col-lg-8">  
            <hr />
            <p>Merhabalar..</p>
            <p>Aşağıdaki iletişm formunu kullanarak bize ulaşabilirsiniz..İlgileriniz için teşekkürler..</p>
            <hr />
            <form class="form-horizontal" runat="server">
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">İsim</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Ad & Soyad" reqiured=""></asp:TextBox>                        
                        <p class='text-danger'></p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">Mail Adresi</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Mail Adresinizi Giriniz" TextMode="Email" reqiured=""></asp:TextBox>                        
                        <p class='text-danger'></p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">Telefon</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Telefon Numaranızı Giriniz.." TextMode="Phone" reqiured=""></asp:TextBox>                        
                        <p class='text-danger'></p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">Konu</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Konu" TextMode="SingleLine" reqiured=""></asp:TextBox>                        
                        <p class='text-danger'></p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="message" class="col-sm-2 control-label">Mesaj</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" rows="4" TextMode="MultiLine" placeholder="Mesaj Yazınız.." reqiured=""></asp:TextBox>
                        <p class='text-danger'></p>
                    </div>
                </div>            
                <div class="form-group">
                    <div class="col-sm-10 col-sm-offset-2">
                        <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-default btn-hover" OnClick="Button1_Click"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10 col-sm-offset-2">
                           
                    </div>
                </div>
            </form>

     </div>  
    <div class="col-lg-8">          
         <div class="col-lg-4">             
               <div class="gmap_canvas">
                   <h1>Biz Buradayız</h1>
                   <iframe width="800" height="300" id="gmap_canvas" src="https://maps.google.com/maps?q=istanbul&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                   <a href="https://www.whatismyip-address.com"></a><br><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}</style><style>.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style>
               </div> 
          </div>                        
         
    </div>
</asp:Content>
