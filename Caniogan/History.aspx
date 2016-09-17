<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="Caniogan.Logo" %>

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
        <h2>History of Barangay Caniogan</h2>
        <hr class="sep">
        <img style="width: 20em; height:15em; padding-right:1.5em" src="img/images/BC.jpg" />
        </center>
        <br />
        <br />

        <p style="color: white; text-align: justify" runat="server" id="txtHisto">Barangay Caniogan is located on the Northern part of Pasig bounded on the south by Barangay Kapasigan, on the west by Marikina River, on the east by Barangay San Miguel and Sagad, and on the north by Barangay Maybunga.</p>
        <br />
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
