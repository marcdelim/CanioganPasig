<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminOfficials.aspx.cs" Inherits="Caniogan.AdminOfficials" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script>

         function EditText() {
        document.getElementById("BtnSave").disabled= false;
        document.getElementById("Last").disabled = false;
        document.getElementById("First").disabled = false;
        document.getElementById("Middle").disabled = false;
        document.getElementById("EmailAdd").disabled = false;
        document.getElementById("SelPosition").disabled = false;
        document.getElementById("ChangeImage").disabled = false;
        
     };
    function SaveText() {
        document.getElementById("Last").disabled = true;
        document.getElementById("First").disabled = true;
        document.getElementById("Middle").disabled = true;
        document.getElementById("EmailAdd").disabled = true;
        document.getElementById("SelPosition").disabled = true;
        document.getElementById("ChangeImage").disabled = true;
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
                           Barangay Officials
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="AdminHome.aspx">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-desktop"></i> Officials 
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
                                  
                               <h2 style="text-align:right"><button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#ModalAddOff">Add Official</button><h2>

                            </div>
                            <!--MOdal Add Official-->
                            <div class="modal fade" id="ModalAddOff" role="dialog">
                                <div class="modal-dialog modal-lg">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      <h4 class="modal-title">Add Official</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form role="form">

                                            <div class="form-group">
                                                <label>Image</label>
                                                <input type="file" id="UpLoadImage">
                                            </div>

                                            <div class="form-group">
                                                <label>Last Name</label>
                                                <input class="form-control" id="LName">
                                            </div>
                                            <div class="form-group">
                                                <label>First Name</label>
                                                <input class="form-control" id="FName">
                                            </div>
                                            <div class="form-group">
                                                <label>Middle Name</label>
                                                <input class="form-control" id="MName">
                                            </div>
                                            <div class="form-group">
                                                <label>Email Address</label>
                                                <input class="form-control" id="Email">
                                            </div>
                                            <div class="form-group">
                                                <label>Position</label>
                                                <select class="form-control" id="Position" >
                                                    <option>Barangay Captain</option>
                                                    <option>Barangay Councilor</option>
                                                    <option>SK Chairman</option>
                                                    <option>SK Member</option>
                                                   
                                                </select>
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
                    <div class="col-lg-2">
                        <img class="img-responsive" src="img/Officials/Gina.jpg" alt="" style="width:18em; height:20em;">
                    </div>
                    <div class="col-lg-8">
                            <p> 
                                <h1><strong>Mendoza, Rowena B.</strong></h1>
                                <h3 style="font-style:italic">Barangay Captain</h3>
                            </p>
                    </div>

                    <div class="col-lg-2">
                        <h2 style="text-align:right"><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#ViewProfile">View Profile</button>
                        </h2>
                    </div>
                    
                </div>
                <br />
                <div class="row" >
                    <div class="col-lg-2">
                        <img class="img-responsive" src="img/Officials/ED.jpg" alt="" style="width:18em; height:20em;">
                    </div>
                    <div class="col-lg-8">
                            <p> 
                                <h1><strong>Delim, Marc Joseph C.</strong></h1>
                                <h3 style="font-style:italic">Youth Council</h3>
                            </p>
                    </div>
                    
                    <div class="col-lg-2">
                        <h2 style="text-align:right"><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#ViewProfile">View Profile</button>
                        </h2>
                    </div>
                </div>
                <br />

                <div class="row" >
                    <div class="col-lg-2">
                        <img class="img-responsive" src="img/Officials/Bernard.jpg" alt="" style="width:18em; height:20em;">
                    </div>
                    <div class="col-lg-8">
                            <p> 
                                <h1><strong>Naga, Mark Daniel.</strong></h1>
                                <h3 style="font-style:italic">Councilor</h3>
                            </p>
                    </div>
                    
                    <div class="col-lg-2">
                        <h2 style="text-align:right"><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#ViewProfile">View Profile</button>
                        </h2>
                    </div>
                </div>

                

                <!--Modal ViewProfile-->
                <div class="modal fade" id="ViewProfile" role="dialog">
                                <div class="modal-dialog modal-lg">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      <h1 class="modal-title" style ="text-align:center">Profile</h1>
                                    </div>
                                    <div class="modal-body">
                                            <center>
                                            <img class="img-responsive" src="img/Officials/Gina.jpg" alt="" style="width:18em; height:20em;">
                                            <div class="form-group">
                                                <label>Change Image</label>
                                                <input type="file" id="ChangeImage" disabled>
                                            </div>
                                            </center>
                                            
                                           
                                             <div class="form-group">
                                                <label> Last Name</label>
                                                <input class="form-control" id="Last" disabled value="Mendoza">
                                            </div>
                                             <div class="form-group">
                                                <label>First Name</label>
                                                <input class="form-control" id="First" disabled value="Rowena">
                                            </div>
                                            <div class="form-group">
                                                <label>Middle Name</label>
                                                <input class="form-control" id="Middle" disabled value="Buslon">
                                            </div>
                                             <div class="form-group">
                                                <label>Email Address</label>
                                                <input class="form-control" id="EmailAdd" disabled value="wenaaa95@gmail.com">
                                            </div>

                                            <div class="form-group">
                                                <label>Position</label>
                                                <select class="form-control" id="SelPosition" disabled >
                                                    <option>Barangay Captain</option>
                                                    <option>Barangay Councilor</option>
                                                    <option>SK Chairman</option>
                                                    <option>SK Member</option>
                                                   
                                                </select>
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
