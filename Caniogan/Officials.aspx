<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Officials.aspx.cs" Inherits="Caniogan.Officials" %>

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

        <br />
        <br />
        <br />
        <br />

        <section id="team">
            <div class="container">
                <h2>Barangay Officials</h2>
                <hr class="sep">
                <p>Barangay Caniogan Officials</p>

                <div class="row wow fadeInUp" data-wow-delay=".3s">
                    <div class="col-md-12">
                        <div class="team">
                            <img style="width: 20em; height: 25em;" class="img-responsive center-block" src="img/Officials/Bernard.jpg" alt="1">
                            <h4>Bernard C. Perez</h4>
                            <p>Barangay Captain</p>
                        </div>
                    </div>
                </div>
                <div class="row wow fadeInUp" data-wow-delay=".3s">
                    <div class="col-lg-4 col-md-4">
                        <div class="team">
                            <img style="width: 15em; height: 20em;" class="img-responsive center-block" src="img/Officials/Petri.jpg" alt="1">
                            <h4>Kag. Petri S. Cortez</h4>
                            <p>Barangay Kagawad</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <div class="team">
                            <img style="width: 15em; height: 20em;" class="img-responsive center-block" src="img/Officials/Cast.jpg" alt="1">
                            <h4>Kag. Annabelle C. Castañeda</h4>
                            <p>Barangay Kagawad</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <div class="team">
                            <img style="width: 15em; height: 20em;" class="img-responsive center-block" src="img/Officials/Gina.jpg" alt="1">
                            <h4>Kag. Gina A. Miguel</h4>
                            <p>Barangay Kagawad</p>
                        </div>
                    </div>
                </div>
                <div class="row wow fadeInUp" data-wow-delay=".3s">
                    <div class="col-md-4">
                        <div class="team">
                            <img style="width: 15em; height: 20em;" class="img-responsive center-block" src="img/Officials/ED.jpg" alt="1">
                            <h4>Kag. Eduardo J. Casumbal</h4>
                            <p>Barangay Kagawad</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="team">
                            <img style="width: 15em; height: 20em;" class="img-responsive center-block" src="img/Officials/Myla.jpg" alt="2">
                            <h4>Kag. Myla B. Flotildes</h4>
                            <p>Barangay Kagawad</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="team">
                            <img style="width: 15em; height: 20em;" class="img-responsive center-block" src="img/Officials/Myla.jpg" alt="3">
                            <h4>Kag. Jovito D. Añonuevo</h4>
                            <p>Barangay Kagawad</p>
                        </div>
                    </div>
                 
                </div>
                <div class="row wow fadeInUp">
                       <div class="col-md-4">
                        <div class="team">
                            <img style="width: 15em; height: 20em;" class="img-responsive center-block" src="img/Officials/Myla.jpg" alt="3">
                            <h4>Kag. Michael S. Altamero</h4>
                            <p>Barangay Kagawad</p>
                        </div>
                     </div>
                </div>

            </div>
        </section>
    </div>


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
