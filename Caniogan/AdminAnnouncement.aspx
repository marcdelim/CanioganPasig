<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminAnnouncement.aspx.cs" Inherits="Caniogan.AdminAnnouncement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script>

         function EditText() {
        document.getElementById("BtnSave").disabled= false;
        document.getElementById("Title").disabled = false;
        document.getElementById("Place").disabled = false;
        document.getElementById("ADesc").disabled = false;
        document.getElementById("ADate").disabled = false;
        document.getElementById("EndDate").disabled = false;

        
     };
    function SaveText() {
        document.getElementById("Title").disabled = true;
        document.getElementById("Place").disabled = true;
        document.getElementById("ADesc").disabled = true;
        document.getElementById("ADate").disabled = true;
        document.getElementById("EndDate").disabled = true;
     };



    </script>
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
                        <h1 class="page-header">
                           Announcements
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="AdminHome.aspx">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-desktop"></i> Announcements
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <!-- Main jumbotron for a primary marketing message or call to action -->
                <div class="row">
                    <div class="col-lg-12">

                        <form role="form">
                            

                            <div class="form-group">
                            
                               <h2 style="text-align:right"><button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#AddAnnounce">Add Announcement</button><h2>

                            </div>
                            <!--MOdal Add Official-->
                            <div class="modal fade" id="AddAnnounce" role="dialog">
                                <div class="modal-dialog modal-lg">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      <h4 class="modal-title">Add Announcement</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form role="form">

                                            

                                            <div class="form-group">
                                                <label> WHAT:</label>
                                                <input class="form-control" id="What">
                                            </div>
                                            <div class="form-group">
                                                <label>WHERE</label>
                                                <input class="form-control" id="Where">
                                            </div>
                                            <div class="form-group">
                                                <label>DESCRIPTION:</label>
                                                <input class="form-control" id="Desc">
                                            </div>
                                            <div class="form-group">
                                                <label>WHEN</label>
                                                <input class="form-control" type="date" id="When">
                                            </div>
                                            <div class="form-group">
                                                <label>END DATE</label>
                                                <input class="form-control" type="datetime-local" id="EDate">
                                            </div>

                                          
  
                                        </form>


                                    </div>
                                    <div class="modal-footer">
                                      <button type="submit" class="btn btn-primary btn-lg" data-dismiss="modal">Add</button>
                                      <button type="submit" class="btn btn-primary btn-lg" data-dismiss="modal">Cancel</button>
                                    </div>
                                  </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

              
                <div class="row" >
                    <div class="col-lg-12">
                        
                    
                            <p> 
                                <h1><strong>WHAT: Class Suspension all levels </strong></h1>
                                <h2><strong>WHERE: </strong>All public schools </h2>
                                <h2><strong>DESCRIPTION:</strong> Due to heavy rains</h2>
                                <h2><strong>WHEN:</strong> September 14, 2016</h2>
                            </p>
                    
                        <h2 style="text-align:right"><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#ViewProfile">Edit Announcement</button>
                        </h2>
                    </div>
                    
                </div>
                <br />
               

                

                <!--Modal ViewProfile-->
                <div class="modal fade" id="ViewProfile" role="dialog">
                                <div class="modal-dialog modal-lg">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      <h1 class="modal-title" style ="text-align:center">Announcement</h1>
                                    </div>
                                    <div class="modal-body">
                                           
                                            
                                           
                                             <div class="form-group">
                                                <label> Announcement Title(WHAT)</label>
                                                <textarea class="form-control" id="Title" disabled rows="1">Class Suspension</textarea>
                                            </div>
                                             <div class="form-group">
                                                <label> Place(WHERE)</label>
                                                <textarea class="form-control" id="Place" disabled rows="1">Caniogan Pasig</textarea>
                                            </div>
                                             <div class="form-group">
                                                <label> Announcement Decription</label>
                                                <textarea class="form-control" id="ADesc" disabled rows="3">Due to heavy rains</textarea>
                                            </div>
                                            <div class="form-group">
                                                <label> Date(WHEN)</label>
                                                <input type="date" class="form-control" id="ADate" disabled value="09/15/16"/>
                                            </div>
                                            <div class="form-group">
                                                <label> End </label>
                                                <input type="datetime-local" class="form-control" id="EndDate"disabled value="09/15/16"/>
                                            </div>
                                             

                                         


                                    </div>

                                    <div class="modal-footer">
                                      <button type="button" class="btn btn-primary btn-lg" onclick="EditText();"> Edit</button>
                                      <button type="submit" id="BtnSave" disabled class="btn btn-primary btn-lg" onclick="SaveText();"> Save</button>
                                    </div>


                                  </div>
                                </div>

                    </div>


            </div>

        </div>
    </div>
</asp:Content>
