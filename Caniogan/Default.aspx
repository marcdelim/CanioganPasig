<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Caniogan._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

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

    <div id="" >
        <div class="item">
        <center>
         <img runat="server" id="imgBanner" src="img/sliders/Slide.jpg" />
        </center>
        </div>
       
    </div>
    <!-- Welcome
	============================================= -->
    <section id="welcome">
        <div class="container">
            <body background="bgimage.jpg">
                </br> </br> </br> 
            <h2>Welcome To <span>Barangay Caniogan</span></h2>
                <hr class="sep">
        </div>
    </section>



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
