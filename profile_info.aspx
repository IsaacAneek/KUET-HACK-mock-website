<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile_info.aspx.cs" Inherits="kuet_hack_mock.profile_info" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile Information</title>
    <link href="styles/profile_info.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="profile-container">
            <h2>User Profile Information</h2>
            <hr />

            <div class="login-info-box">
                <asp:Label ID="lblLoginStatus" runat="server" Text="Logged in as: Guest" CssClass="status-text"></asp:Label>
                <asp:Label ID="lblLastLogin" runat="server" Text="Last Login: N/A" CssClass="sub-text"></asp:Label>
            </div>

            <div class="form-grid">
                
                <div class="form-group">
                    <asp:Label ID="lblUsername" runat="server" AssociatedControlID="txtUsername">Username:</asp:Label>
                    <asp:TextBox ID="txtUsername" runat="server" ReadOnly="true"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblRoll" runat="server" AssociatedControlID="txtRoll">Roll Number:</asp:Label>
                    <asp:TextBox ID="txtRoll" runat="server" ReadOnly="true"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblDepartment" runat="server" AssociatedControlID="txtDepartment">Department:</asp:Label>
                    <asp:TextBox ID="txtDepartment" runat="server" ReadOnly="true"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword">Password:</asp:Label>
                    <div class="password-wrapper">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Button ID="btnTogglePassword" runat="server" Text="Show" OnClick="onShowPasswordClicked" CssClass="btn-secondary" UseSubmitBehavior="false" />
                    </div>
                </div>

            </div>

            <div class="form-actions">
                <asp:Button ID="btnUpdate" runat="server" Text="Update Info" OnClick="onUpdateInfoClicked" CssClass="btn-primary" />
                <asp:Button ID="btnHome" Text="Home" runat="server" onClick="onHomeButtonClicked"/>
                <asp:Label ID="lblMessage" runat="server" CssClass="message-label" ForeColor="Green"></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>