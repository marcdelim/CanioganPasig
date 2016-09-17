<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminBanner.aspx.cs" Inherits="Caniogan.AdminBanner" %>

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

            <div class="container-fluid ">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Banner
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i><a href="AdminHome.aspx">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-bar-chart-o"></i>Banner

                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">

                        <form role="form">


                            <div class="form-group">
                                <center>
                                <img runat="server" id="imgBanner" class="img-responsive" alt="" />
                                <br>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModalEdit">UPDATE</button>
                                </center>

                                
                            </div>


                        <!--myModalEdit-->
                             <div class="modal fade" id="myModalEdit" role="dialog">
                                <div class="modal-dialog modal-lg">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      <h4 class="modal-title">Update Banner</h4>
                                    </div>
                                    <div class="modal-body">
                                            <asp:FileUpload ID="BannerFile" runat="server" CssClass="form-control" />
                                        </div>
                                        <div class="modal-footer">
                                            <asp:Button ID="btnBanUp" OnClick="btnBanUp_Click" runat="server" Text="UPDATE" class="btn btn-primary btn-lg"/>
                                        </div>
                                  </div>
                                </div>
                            </div>

                        

                           

                        </form>

                    </div>

                </div>

                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
    </div>
</asp:Content>
