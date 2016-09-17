<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MV.aspx.cs" Inherits="Caniogan.MV" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url(img/images/1.jpg);
            min-height: 500px;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>

    <div class="container body-content" style="background-color: rgba(0,0,0,0.50)">
        </br> </br> </br> </br>  
        <center>  
        <h2>Mission and Vision</h2>
        <hr class="sep">
        <img style="width: 20em; height:15em; padding-right:1.5em" src="img/images/BC.jpg" />
        </center>
        <br />
        <br />
        <div class="text-center">
            <hr />
            <h2 style="color: white">Mission of the Barangay</h2>
            <hr />
        </div>
        <p style="color: white" runat = "server" id= "txtMiss">As the basic political unit, the Barangay serves as the primary planning and implementing unit of the government policies, plans, programs, projects and activities in the community, and as a forum wherein the collective view of the people may be expressed, crystallized, considered and where diputes may be amicably settled.</p>
        <div class="text-center">
            <hr />
            <h2 style="color: white">Vision of the Barangay</h2>
            <hr />
        </div>
        <p runat="server" id="txtVis" style="color: white">It is the vision of all barangays:</p>



        <br />
        <br />

    </div>

    <script src="Scripts/jquery.min.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../Scripts/custom.js"></script>
    <script type="text/javascript" src="../plugins/owl-carousel/owl.carousel.min.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.easing.min.js"></script>
    <script type="text/javascript" src="../plugins/countTo/jquery.countTo.js"></script>
    <script type="text/javascript" src="../plugins/inview/jquery.inview.min.js"></script>
    <script type="text/javascript" src="../plugins/owl-carousel/owl.carousel.min.js"></script>
    <script type="text/javascript" src="../plugins/WOW/dist/wow.min.js"></script>
</asp:Content>

