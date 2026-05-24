<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestDB.aspx.cs" Inherits="YourProject.TestDB" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>SQL Test</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Button ID="btnTest" runat="server" Text="Test DB Connection" OnClick="btnTest_Click" />

            <br /><br />

            <asp:Label ID="lblResult" runat="server" Font-Size="Large"></asp:Label>

        </div>
    </form>
</body>
</html>