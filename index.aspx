<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="kuet_hack_mock.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hardware Acceleration Club KUET</title>
    <link rel="stylesheet" href="styles/styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="top-bar">
            <div class="top-bar-left-side-info-panel">
                <asp:Image ID="LogoImage" runat="server" ImageUrl="~/assets/hack_logo.jpg" AlternateText="HACK Logo" />
                <div class="info-panel-titles">
                    <p>HACK</p>
                    <p>Hardware Acceleration Club KUET</p>
                </div>
            </div>

            <div class="top-bar-right-side-buttons">
                <asp:Button ID="BtnHome" runat="server" Text="Home" />
                <asp:Button ID="BtnPeople" runat="server" Text="People" />
                <asp:Button ID="BtnResearch" runat="server" Text="Research" />
                <asp:Button ID="BtnProjects" runat="server" Text="Projects" />
                <asp:Button ID="BtnPublications" runat="server" Text="Publications" />
            </div>
        </div>

        <div class="image-container">
            <div class="carousel">
                <asp:Image ID="Robot1" runat="server" ImageUrl="~/assets/robot1.jpg" AlternateText="" />
                <asp:Image ID="Robot2" runat="server" ImageUrl="~/assets/robot2.jpg" AlternateText="" />
                <asp:Image ID="Robot3" runat="server" ImageUrl="~/assets/robot3.jpg" AlternateText="" />
            </div>
        </div>

        <div class="description-box">
            <p class="user-question">Interested in working with us?</p>

            <div class="description">
                <p>
                    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Numquam minima nisi dolores, enim odit rem!
                    Odio, amet. Quo architecto minima iure tempore hic, expedita molestiae earum consequatur, asperiores
                    accusamus neque. Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eius, quas quos non fugiat
                    aliquam eveniet enim quo nostrum consequuntur. Corporis asperiores in veniam dolorem nobis nesciunt ad?
                    Aliquid, enim necessitatibus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officia omnis,
                    maxime architecto dolor fugit rerum alias distinctio sequi, accusamus, iure esse odio a enim ex quae
                    veniam similique. Nostrum, harum!
                </p>

                <p>
                    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Necessitatibus, accusamus! Quos, natus
                    temporibus molestiae perspiciatis recusandae officia atque nesciunt dignissimos vel enim repellendus
                    animi, debitis nihil aspernatur culpa! Veritatis, pariatur? Lorem, ipsum dolor sit amet consectetur
                    adipisicing elit. Officiis tenetur illo possimus voluptatum at, eligendi eveniet odit velit, officia
                    voluptatibus, autem doloremque? Dignissimos dolorum aperiam nisi perspiciatis inventore blanditiis
                    repellendus.
                </p>

                <ul>
                    <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam, porro.</li>
                    <li>Lorem ipsum dolor sit amet.</li>
                    <li>Lorem ipsum dolor, sit amet consectetur adipisicing.</li>
                    <li>Lorem ipsum dolor sit amet consectetur.</li>
                </ul>

                <asp:Button ID="BtnLearnMore" runat="server" Text="Learn More" />
            </div>
        </div>

        <div>
            <p>Contact</p>
            <p>
                Registrar <br />
                Khulna University of Engineering &amp; Technology (KUET), <br />
                Khulna-9203, Bangladesh <br />
                +88024777 32971 <br />
                +88024777 33303 <br />
                registrar@kuet.ac.bd
            </p>
        </div>
    </form>
</body>
</html>
