<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminHistory.aspx.cs" Inherits="Caniogan.AdminHistory" %>
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

       h3 {
            text-indent:30px;
            margin-left:10px;
            margin-right:10px;
        }
    </style>
  
    <div id="wrapper">

        <div id="page-wrapper" style="background: transparent">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            History
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="AdminHome.aspx">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-table"></i> History
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                 <div class="row">
                  

                        <form role="form">
                            
                            <h2 style="text-align:right"><button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">EDIT</button></h2>


                            <div class="form-group">
                            
                           
                                    <h3 style="text-align: justify;" runat ="server" id="txtHisto" >Old timers say that the Barangay was called thus because og the abundance of coconut groves. They used to call it "Niyugan" and later Caniogan, although very few coconuts now grow in the Barangay.</h3>
                                    <br />
                                    

                            </div>
                            
                            <br>
                            <br>
                            
                            <!--modal-->
                            
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog modal-md">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      <h4 class="modal-title">History</h4>
                                    </div>
                                    <div class="modal-body">
                                     
                                        <textarea runat="server" id ="txtHistoMod" class="form-control" rows="10"> </textarea>
                                    </div>
                                    <div class="modal-footer">
                                     <asp:Button ID="btnHisUp" OnClick="btnHisUp_Click" runat="server" Text="UPDATE" type="submit" class="btn btn-primary btn-lg"/>
                                    </div>
                                  </div>
                                </div>
                            </div>

                        </form>

                    </div>
                    
         
        

            </div>
            <!-- /.container-fluid -->

        </div>

    </div>
</asp:Content>
