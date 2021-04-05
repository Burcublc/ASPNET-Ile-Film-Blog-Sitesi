<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DiziFilmYorumSitesi1.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Oturum Aç</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="LoginDosyalar/assets/css/login.css">
</head>
<body>
    <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container">
      <div class="card login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="LoginDosyalar/assets/images/login.jpg" alt="login" class="login-card-img">
          </div>
          <div class="col-md-7">
            <div class="card-body">
              <div class="brand-wrapper">
                <img src="LoginDosyalar/assets/images/logo.svg" alt="logo" class="logo">
              </div>
              <p class="login-card-description">OTURUM AÇ</p>
              <form runat="server">
                  <div class="form-group">
                    <label for="email" class="sr-only">Email</label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Kullanıcı Adını Giriniz"></asp:TextBox>
                  </div>
                  <div class="form-group mb-4">
                    <label for="password" class="sr-only">Şifre</label>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Şifre Giriniz" ></asp:TextBox>
                  </div>
                  <asp:Button ID="Button1" runat="server" Text="Giriş Yap" class="btn btn-block login-btn mb-4" OnClick="Button1_Click"/>
                </form>
                <a href="#!" class="forgot-password-link">Şifreyi Unuttun mu?</a>
               
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</body>
</html>
