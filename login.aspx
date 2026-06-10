<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="kuet_hack_mock.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="styles/login.css" />
</head>
<body>
    <div class="login-nav-bar">
        <img src="assets/hack_logo.jpg" alt="Alternate Text" />
        <p>Hardware Acceleration Club KUET (HACK)</p>
    </div>
    <div class="main-login-section">
        <p class="login-label">Login</p>

        <form id="form1" runat="server" class="form-section">
            <asp:Label Text="Username" runat="server" />
            <asp:TextBox ID="username" runat="server" />

            <asp:Label Text="Password" runat="server" />
            <asp:TextBox ID="password" runat="server" TextMode="Password" />
            <asp:Button CssClass="login-button" Text="Login" OnClick="onLoginClicked" runat="server" />
            <p>Not a member of HACK and need a Member Portal account? Register here with your official email address.</p>
            <asp:Button CssClass="register-button" Text="Register" OnClick="onGoToRegisterPageButtonClicked" runat="server" />
        </form>
        <p>Work for a Member organization and forgot your password? You can reset your password here.</p>
    </div>
</body>
</html>
