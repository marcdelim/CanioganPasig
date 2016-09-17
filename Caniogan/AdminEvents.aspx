<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminEvents.aspx.cs" Inherits="Caniogan.AdminEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>

         function EditText() {
        document.getElementById("BtnSave").disabled= false;
        document.getElementById("ETitle").disabled = false;
        document.getElementById("EPlace").disabled = false;
        document.getElementById("EvDesc").disabled = false;
        document.getElementById("EvDate").disabled = false;
        document.getElementById("EndDate").disabled = false;
        document.getElementById("StartDate").disabled = false;

        
     };
    function SaveText() {
        document.getElementById("ETitle").disabled = true;
        document.getElementById("EPlace").disabled = true;
        document.getElementById("EvDesc").disabled = true;
        document.getElementById("EvDate").disabled = true;
        document.getElementById("StartDate").disabled = true;
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
                           Events
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="AdminHome.aspx">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-desktop"></i> Events
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
                            
                               <h2 style="text-align:right"><button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#AddEvent">Add Event</button><h2>

                            </div>
                            <!--MOdal Add Event-->
                            <div class="modal fade" id="AddEvent" role="dialog">
                                <div class="modal-dialog modal-lg">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      <h4 class="modal-title">Add Event</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form role="form">

                                            

                                            <div class="form-group">
                                                <label> EVENT TITLE</label>
                                                <input class="form-control" id="EWhat">
                                            </div>
                                            <div class="form-group">
                                                <label>EVENT PLACE</label>
                                                <input class="form-control" id="EWhere">
                                            </div>
                                           
                                            <div class="form-group">
                                                <label>EVENT DESCRIPTION:</label>
                                                <input class="form-control" id="EDesc">
                                            </div>
                                            
                                             <div class="form-group">
                                                <label>EVENT DATE and TIME:</label>
                                                <input class="form-control" type="datetime-local" id="EDateTime">
                                            </div>
                                            <div class="form-group">
                                                <label>START DATE</label>
                                                <input class="form-control" type="datetime-local" id="SDate">
                                               
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

                                <h1><strong>WHAT: Gift Giving </strong></h1>
                                <h2><strong>WHERE: </strong> Barangay Caniogan Court </h2>
                                <h2><strong>DESCRIPTION:</strong> Mendoza Foundation is giving gifts to the children of Caniogan. </h2>
                                <h2><strong>WHEN:</strong> December 9, 2016</h2>
                            </p>
                    
                        <h2 style="text-align:right"><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#ViewProfile">Edit Event</button>
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
                                      <h1 class="modal-title" style ="text-align:center">Event</h1>
                                    </div>
                                    <div class="modal-body">
                                           
                                            
                                           
                                             <div class="form-group">
                                                <label> Event Title(WHAT)</label>
                                                <textarea class="form-control" id="ETitle" disabled rows="1"> Gift Giving</textarea>
                                            </div>
                                             <div class="form-group">
                                                <label> Event Place(WHERE)</label>
                                                <textarea class="form-control" id="EPlace" disabled rows="1">Caniogan Pasig</textarea>
                                            </div>
                                             <div class="form-group">
                                                <label> Event Decription</label>
                                                <textarea class="form-control" id="EvDesc" disabled rows="3">Mendoza Foundation is giving gift to children of Caniogan</textarea>
                                            </div>
                                            <div class="form-group">
                                                <label> Date(WHEN)</label>
                                                <input type="date" class="form-control" id="EvDate" disabled value="12/09/16 10:00 am"/>
                                            </div>
                                            <div class="form-group">
                                                <label> Start </label>
                                                <input type="datetime-local" class="form-control" id="StartDate"disabled value="09/15/16"/>
                                            </div>
                                            <div class="form-group">
                                                <label> End </label>
                                                <input type="datetime-local" class="form-control" id="EndDate"disabled value="12/09/16"/>
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
