<%@ Page Title="Mission and Vision" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminMV.aspx.cs" Inherits="Caniogan.AdminMV" %>

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
        <div id="page-wrapper" style="background: transparent">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Mission&Vision
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i><a href="AdminHome.aspx">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-table"></i>Mission & Vission
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-12">

                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#Mission">Mission</a></li>
                            <li><a data-toggle="tab" href="#Vision">Vision</a></li>
                        </ul>

                        <div class="tab-content">
                            <div id="Mission" class="tab-pane active">
                                <%--<form role="form">--%>


                                    <div class="form-group">

                                        <h3 runat="server" id="headerMiss" style="text-align: justify">&nbsp&nbsp&nbsp&nbsp&nbsp 
                                        </h3>

                                    </div>

                                    <br>
                                    <br>
                                    <h2 style="text-align: right">
                                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">EDIT</button></h2>
                                    <!--modal-->
                                    <div class="modal fade" id="myModal" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">Mission</h4>
                                                </div>
                                                <div class="modal-body">

                                                    <textarea runat="server" id="txtMiss" class="form-control" rows="3"> </textarea>
                                                </div>
                                                <div class="modal-footer">
                                                    <asp:Button ID="btnMUp" OnClick="btnMUp_Click" runat="server" Text="UPDATE" type="submit" class="btn btn-primary btn-lg"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                <%--</form>--%>
                            </div>
                            <div id="Vision" class="tab-pane">
                                <%--<form role="form">--%>
                                    
                                    <div class="form-group">

                                        <h3 runat="server" id="headerVis" style="text-align: justify">
                                        </h3>
                                        <br />
                                        <h2 style="text-align: right">
                                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModalEdit">EDIT</button></h2>
                                    </div>
                                    <!--myModalEdit-->
                                     <div class="modal fade" id="myModalEdit" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">Vision</h4>
                                                </div>
                                                <div class="modal-body">

                                                    <textarea runat="server" id="txtVis" class="form-control" rows="3"> </textarea>
                                                </div>
                                                <div class="modal-footer">
                                                    <asp:Button ID="btnVUp" OnClick="btnVUp_Click" runat="server" Text="UPDATE" type="submit" class="btn btn-primary btn-lg"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    

                                <%--</form>--%>
                            </div>
                        </div>



                    </div>

                </div>





            </div>
            <!-- /.container-fluid -->

        </div>
    </div>
    <script src="Scripts/jquery.min.js"></script>
</asp:Content>
