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
                    The Hardware Acceleration Club (HAC) at KUET focuses on exploring and developing high-performance computing solutions through hardware acceleration, embedded systems, FPGA design, digital systems, and related technologies. Inspired by advances in modern computing architectures, the club provides a platform for students to learn, build, and innovate through hands-on projects, research, and collaboration.
                </p>

                <p>
                    We are always excited to welcome new members who are passionate about technology and eager to contribute to a collaborative learning environment. We value curiosity, teamwork, creativity, and a hands-on approach to problem-solving. Our members come from diverse academic backgrounds and share a strong interest in hardware design, computer architecture, embedded systems, artificial intelligence acceleration, and emerging technologies.
                </p>

                <ul>
                    <li>A brief description of your interests and why you would like to join the club.</li>
                    <li>Your CV or résumé (optional but encouraged).</li>
                    <li>Any relevant project portfolio, GitHub profile, or technical achievements (if available).</li>
                    <li>The email subject should indicate your current academic level and department.</li>
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
