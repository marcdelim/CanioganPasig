<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminAnnouncement.aspx.cs" Inherits="Caniogan.AdminAnnouncement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/jquery.dataTables.css" rel="stylesheet" />
    <script src="Scripts/jquery.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script  src="Scripts/jquery.datatables.min.js"></script>

    <!--script for button click-->
      <script>

         function EditText() {
        document.getElementById("BtnSave").disabled= false;
        document.getElementById("EditWhat").disabled = false;
        document.getElementById("EditWhere").disabled = false;
        document.getElementById("EditWho").disabled = false;
        document.getElementById("EditDesc").disabled = false;
        document.getElementById("EditWhen").disabled = false;
        document.getElementById("EditEDate").disabled = false;

        
     };
    function SaveText() {
        document.getElementById("EditWhat").disabled = true;
        document.getElementById("EditWhere").disabled = true;
        document.getElementById("EditWho").disabled = true;
        document.getElementById("EditWhen").disabled = true;
        document.getElementById("EditDesc").disabled = true;
        document.getElementById("EditEDate").disabled = true;
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

        td
        {
         font-family:Verdana, Geneva, sans-serif;
        }
    </style>

    <div id="wrapper">

        <div id="page-wrapper" style="background: transparent">
           

            <div class="container-fluid">
                  <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                           Announcement
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="AdminHome.aspx">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-desktop"></i> Announcement
                            </li>
                        </ol>
                    </div>
                </div>

                <h2 style="text-align:right"><button type="button" class="btn btn-primary btn-s" data-toggle="modal" data-target="#AddAnnounce">Add Announcement</button></h2>

               

                <div class="table-responsive">
                    <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>WHAT</th>
                                <th>WHERE</th>
                                <th>WHEN</th>
                                <th>WHO</th>
                                <th>DESCRIPTION</th>
                                <th>ACTION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>No classes</td>
                                <td>Pasig</td>
                                <td>September 20, 2016</td>
                                <td>All levels</td>
                                <td>Suspended</td>
                                <td><button type="button" class="btn btn-default btn-s" data-toggle="modal" data-target="#Edit">Edit</button>
                                    <button type="button" class="btn btn-default btn-s" data-toggle="modal" data-target="#Delete">Delete</button>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>


                
                


                <script type="text/javascript">
                $(document).ready(function() {
                    $('#example').DataTable();
                } );
                </script>
              
                
            </div>
        </div>
    </div>

      <!--MOdal Add Announcement-->
    <div class="modal fade" id="AddAnnounce" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add Announcement</h4>
                </div>
                <div class="modal-body">
                    <form role="form">

                        <div class="form-group">
                            <label>WHAT:</label>
                            <input class="form-control" id="AWhat">
                        </div>
                        <div class="form-group">
                            <label>WHERE:</label>
                            <input class="form-control" id="AWhere">
                        </div>
                        <div class="form-group">
                            <label>WHO:</label>
                            <input class="form-control" id="AWho">
                        </div>

                        <div class="form-group">
                            <label>DESCRIPTION:</label>
                            <input class="form-control" id="ADesc">
                        </div>

                        <div class="form-group">
                            <label>WHEN:</label>
                            <input class="form-control" type="datetime-local" id="ADateTime">
                        </div>

                        <div class="form-group">
                            <label>END DATE</label>
                            <input class="form-control" type="datetime-local" id="AEDate">
                        </div>


                    </form>
                    <div class="modal-footer">
                                      <button type="submit" class="btn btn-primary btn-md" data-dismiss="modal">Add</button>
                                      <button type="submit" class="btn btn-primary btn-md" data-dismiss="modal">Cancel</button>
                   </div>
                </div>
                </div>
            </div>
        </div>

    <!--Modal for Edit--->
    <div class="modal fade" id="Edit" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h1 class="modal-title" style="text-align: center">Announcement </h1>
                </div>
                <div class="modal-body">



                    <div class="form-group">
                        <label>WHAT:</label>
                        <textarea class="form-control" id="EditWhat" disabled rows="1"></textarea>
                    </div>
                    <div class="form-group">
                        <label>WHERE:</label>
                        <textarea class="form-control" id="EditWhere" disabled rows="1">Caniogan Pasig</textarea>
                    </div>
                    <div class="form-group">
                        <label>WHO:</label>
                        <textarea class="form-control" id="EditWho" disabled rows="3"></textarea>
                    </div>
                    <div class="form-group">
                        <label>WHEN:</label>
                        <input type="date" class="form-control" id="EditWhen" disabled />
                    </div>
                    <div class="form-group">
                        <label>DESCRIPTION:</label>
                        <textarea class="form-control" id="EditDesc" disabled rows="3"></textarea>
                    </div>

                    <div class="form-group">
                        <label>END: </label>
                        <input type="datetime-local" class="form-control" id="EditEDate" disabled />
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-primary btn-md" onclick="EditText();">Edit</button>
                    <button type="submit" id="BtnSave" disabled class="btn btn-primary btn-md" onclick="SaveText();">Save</button>
                </div>


            </div>
        </div>

    </div>


    <!---Modal for Delete-->
    <div class="modal fade" id="Delete" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h1 class="modal-title" style="text-align: center">Announcement </h1>
                </div>
                <div class="modal-body">
                    <label> Are you sure you want to delete?</label>
                    
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-md">Yes</button>
                    <button type="submit" class="btn btn-primary btn-md">No</button>
                </div>
            </div>
        </div>
    </div>
       




</asp:Content>
