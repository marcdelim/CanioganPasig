<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Caniogan.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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


     <div id="wrapper">

        <div id="page-wrapper" style="background:transparent">

            <div class="container-fluid ">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header"> Dashboard
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i><a href="AdminHome.aspx">Dashboard</a>
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                     <center>
                        <h1 style="font-size:50px">Welcome  <span>Admin</span></h1>
                            <hr class="sep"/>
                        <img class="img-responsive" src="img/Caniogan/CanioganLogo.png" alt="" />
                    </center>
                </div>
               
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
    </div>
</asp:Content>
