<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 11/28/2016
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Librarian Dashboard</title>
    <meta name="generator" content="Bootply"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]> -->
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.0.3/angular.min.js"></script>
</head>
<style>
    /*<!-- Making the form awesome --> */
    .form-style-9{
        max-width: 450px;
        background: #FAFAFA;
        padding: 30px;
        margin: 50px auto;
        box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
        border-radius: 10px;
        border: 6px solid #305A72;
    }
    .form-style-9 ul{
        padding:0;
        margin:0;
        list-style:none;
    }
    .form-style-9 ul li{
        display: block;
        margin-bottom: 10px;
        min-height: 35px;
    }
    .form-style-9 ul li  .field-style{
        box-sizing: border-box;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        padding: 8px;
        outline: none;
        border: 1px solid #B0CFE0;
        -webkit-transition: all 0.30s ease-in-out;
        -moz-transition: all 0.30s ease-in-out;
        -ms-transition: all 0.30s ease-in-out;
        -o-transition: all 0.30s ease-in-out;
    }.form-style-9 ul li  .field-style:focus{
         box-shadow: 0 0 5px #B0CFE0;
         border:1px solid #B0CFE0;
     }
    .form-style-9 ul li .field-split{
        width: 49%;
    }
    .form-style-9 ul li .field-full{
        width: 100%;
    }
    .form-style-9 ul li input.align-left{
        float:left;
    }
    .form-style-9 ul li input.align-right{
        float:right;
    }
    .form-style-9 ul li textarea{
        width: 100%;
        height: 100px;
    }
    .form-style-9 ul li input[type="button"],
    .form-style-9 ul li input[type="submit"] {
        -moz-box-shadow: inset 0px 1px 0px 0px #3985B1;
        -webkit-box-shadow: inset 0px 1px 0px 0px #3985B1;
        box-shadow: inset 0px 1px 0px 0px #3985B1;
        background-color: #216288;
        border: 1px solid #17445E;
        display: inline-block;
        cursor: pointer;
        color: #FFFFFF;
        padding: 8px 18px;
        text-decoration: none;
        font: 12px Arial, Helvetica, sans-serif;
    }
    .form-style-9 ul li input[type="button"]:hover,
    .form-style-9 ul li input[type="submit"]:hover {
        background: linear-gradient(to bottom, #2D77A2 5%, #337DA8 100%);
        background-color: #28739E;
    }
    /*End form styling*/
    /*Making the modal box awesome*/
    .modal {
        /*//height: 45%;*/
        text-align: center;
        padding: 0 !important;
    }
    /*.modal:before {*/
    /*content: '';*/
    /*display: inline-block;*/
    /*height: 100%;*/
    /*width: 100%;*/
    /*vertical-align: middle;*/
    /*margin-right: -4px; !* Adjusts for spacing *!*/
    /*}*/
    .modal-body{
        height: 100%;
    }
    .modal-dialog {
        width: 95%;
        display: inline-block;
        text-align: left;
        vertical-align: middle;
    }
    /*End modal styling*/
</style>
<script type="text/javascript">
    displayForms = function (link, formId) {
        // disable subsequent clicks
        link.onclick = function (event) {
            event.preventDefault();
        }
        document.getElementById(formId).style.display = "block";
    }
    $(document).ready(function () {
        $("#addBtn").click(function () {
            $('#addBookModal').modal('show');
        });
        $("#addBtn1").click(function () {
            $('#addBookModal').modal('show');
        });
    });
</script>
<body>
<!-- header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">LMS- Group2 Dashboard</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#"><i
                            class="glyphicon glyphicon-user"></i> Admin <span class="caret"></span></a>
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="#">My Profile</a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="glyphicon glyphicon-lock"></i> Logout</a></li>
            </ul>
        </div>
    </div>
    <!-- /container -->
</div>
<!-- /Header -->

<!-- Main -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <!-- Left column -->
            <a href="#"><strong><i class="glyphicon glyphicon-wrench"></i> Tools</strong></a>

            <hr>

            <ul class="nav nav-stacked">
                <li class="nav-header"><a href="#" data-toggle="collapse" data-target="#userMenu">Settings <i
                        class="glyphicon glyphicon-chevron-down"></i></a>
                    <ul class="nav nav-stacked collapse in" id="userMenu">
                        <li class="active"><a href="#"><i class="glyphicon glyphicon-home"></i> Home</a></li>
                        <li><a id="addBtn1" href="#"><i class="glyphicon glyphicon-plus-sign"></i> Add a Book</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-edit"></i> Update a Book</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-remove"></i> Remove a Book</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-list"></i> View all books</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-flag"></i> Transactions</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-off"></i> Logout</a></li>
                    </ul>
                </li>
            </ul>

            <hr>

            <hr>

            <hr>
        </div>
        <div class="row">
            <!-- center left-->
            <div class="col-md-6">
                <div style="font-weight: bold; text-align: center; vertical-align: middle" class="well">
                    <i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;Manage Books
                </div>

                <hr>

                <!-- Modal -->
                <div class="modal fade" id="addBookModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"
                                        aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Add a new book to LMS</h4>
                            </div>
                            <div class="modal-body">
                                <!-- Add forms here -->
                                <ul class="nav nav-tabs" id="tabContent" data-tabs="tabs">
                                    <li>
                                        <a href="#" id="simpleadd" data-toggle="tab" onclick="displayForms(this,'simpleaddform');">Add via
                                            ISBN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" id="advancedadd" data-toggle="tab" onclick="displayForms(this,'advancedaddform');">Advanced
                                            add
                                        </a>
                                    </li>
                                </ul>
                                <div id="my-tab-content" class="tab-content">
                                    <div class="tab-pane active" id="a">
                                        <form:form class="form-style-9" method="post" action="book/addBook/"
                                                   modelAttribute="book" name="simpleaddform" id="simpleaddform"
                                                   style="display: none">
                                            <ul>
                                                <li>
                                                    <input type="text" id="isbn"
                                                           class="field-style field-full align-none" name="isbn"
                                                           placeholder="ISBN">
                                                </li>
                                                <li>
                                                    <input type="text" name="callnumber"
                                                           class="field-style field-split align-left"
                                                           placeholder="Call Number"/>
                                                    <input type="text" name="location"
                                                           class="field-style field-split align-right"
                                                           placeholder="Location"/>
                                                </li>
                                                <li>
                                                    <input type="number" min="1" name="num_of_copies"
                                                           class="field-style field-split align-left"
                                                           placeholder="# of copies"/>
                                                    <input type="text" name="keywords"
                                                           class="field-style field-split align-right"
                                                           placeholder="Keywords"/>
                                                    <select class="selectpicker" name="current_status"
                                                            data-style="btn-info">
                                                        <option>Available</option>
                                                        <option>Reserved</option>
                                                        <option>Wait-Listed</option>
                                                    </select>

                                                </li>
                                                <li>
                                                    <input type="submit" value="Add Book"/>
                                                </li>
                                            </ul>
                                        </form:form>
                                    </div>
                                </div>
                                <div class="tab-pane" id="b">

                                    <form:form class="form-style-9" method="post" action="book/addBook/"
                                               modelAttribute="book" id="advancedaddform" style="display: none">
                                        <ul>
                                            <li>
                                                <input type="text" class="field-style field-split align-left"
                                                       name="isbn" placeholder="ISBN">
                                                <input type="text" name="title"
                                                       class="field-style field-split align-right" placeholder="Title"/>
                                            </li>
                                            <li>
                                                <input type="text" name="author"
                                                       class="field-style field-split align-left" placeholder="Author"/>
                                                <input type="text" name="publisher"
                                                       class="field-style field-split align-right"
                                                       placeholder="Publisher"/>
                                            </li>
                                            <li>
                                                <input type="text" name="year_of_publication"
                                                       class="field-style field-split align-left"
                                                       placeholder="Publication Year"/>
                                                <input type="text" name="location"
                                                       class="field-style field-split align-left"
                                                       placeholder="Library Location"/>
                                            </li>
                                            <li>
                                                <input type="number" min="1" name="num_of_copies"
                                                       class="field-style field-split align-left"
                                                       placeholder="# of Copies"/>
                                                <input type="text" name="callnumber"
                                                       class="field-style field-split align-left"
                                                       placeholder="Call Number"/>
                                            </li>
                                            <li>
                                                <select class="selectpicker" name="current_status"
                                                        data-style="btn-info">
                                                    <option>Available</option>
                                                    <option>Reserved</option>
                                                    <option>Wait-Listed</option>
                                                </select>
                                                <input type="text" name="keywords"
                                                       class="field-style field-full align-none"
                                                       placeholder="Keywords"/>
                                            </li>

                                            <li>
                                                <input type="submit" value="Add Book"/>
                                            </li>
                                        </ul>
                                    </form:form>
                                </div>
                                <%--</div>--%>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <%--<button type="button" class="btn btn-primary">Add Book </button>--%>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="btn-group btn-group-justified">
                    <a id="addBtn" href="#" class="btn btn-primary col-sm-3">
                        <i class="glyphicon glyphicon-plus"></i>
                        <br> Add
                    </a>
                    <a href="#" class="btn btn-primary col-sm-3">
                        <i class="glyphicon glyphicon-edit"></i>
                        <br> Update
                    </a>
                    <a href="#" class="btn btn-primary col-sm-3">
                        <i class="glyphicon glyphicon-remove"></i>
                        <br> Remove
                    </a>
                    <a href="#" class="btn btn-primary col-sm-3">
                        <i class="glyphicon glyphicon-list"></i>
                        <br> List
                    </a>
                </div>

                <hr>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>Reports</h4></div>
                    <div class="panel-body">

                        <small>Available</small>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="72"
                                 aria-valuemin="0" aria-valuemax="100" style="width: 72%">
                                <span class="sr-only">72% Complete</span>
                            </div>
                        </div>
                        <small>Reserved</small>
                        <div class="progress">
                            <div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar"
                                 aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                <span class="sr-only">20% Complete</span>
                            </div>
                        </div>
                        <small>WaitListed</small>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60"
                                 aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                <span class="sr-only">60% Complete (warning)</span>
                            </div>
                        </div>
                        <small>Failures</small>
                        <div class="progress">
                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80"
                                 aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                <span class="sr-only">80% Complete</span>
                            </div>
                        </div>
                    </div>
                    <!--/panel-body-->
                </div>
                <!--/panel-->

                <hr>

                <%--<!--tabs-->--%>
                <%--&lt;%&ndash;<div class="panel">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<ul class="nav nav-tabs" id="myTab">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li class="active"><a href="#profile" data-toggle="tab">Profile</a></li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li><a href="#messages" data-toggle="tab">Messages</a></li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li><a href="#settings" data-toggle="tab">Settings</a></li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="tab-content">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="tab-pane active well" id="profile">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<h4><i class="glyphicon glyphicon-user"></i></h4> Lorem profile dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate.&ndash;%&gt;--%>
                <%--&lt;%&ndash;<p>Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis dolor, in sagittis nisi.</p>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="tab-pane well" id="messages">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<h4><i class="glyphicon glyphicon-comment"></i></h4> Message ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate.&ndash;%&gt;--%>
                <%--&lt;%&ndash;<p>Quisque mauris augu.</p>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="tab-pane well" id="settings">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<h4><i class="glyphicon glyphicon-cog"></i></h4> Lorem settings dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate.&ndash;%&gt;--%>
                <%--&lt;%&ndash;<p>Quisque mauris augue, molestie.</p>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>

                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--<!--/tabs-->--%>

                <%--<hr>--%>

                <%--<div class="panel panel-default">--%>
                <%--<div class="panel-heading">--%>
                <%--<h4>New Requests</h4></div>--%>
                <%--<div class="panel-body">--%>
                <%--<div class="list-group">--%>
                <%--<a href="#" class="list-group-item active">Hosting virtual mailbox serv..</a>--%>
                <%--<a href="#" class="list-group-item">Dedicated server doesn't..</a>--%>
                <%--<a href="#" class="list-group-item">RHEL 6 install on new..</a>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<!--/col-->--%>
                <%--&lt;%&ndash;<div class="col-md-6">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="panel panel-default">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="panel-heading">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<h4>Notices</h4></div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="panel-body">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="alert alert-info">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<button type="button" class="close" data-dismiss="alert">×</button>&ndash;%&gt;--%>
                <%--&lt;%&ndash;This is a dismissable alert.. just sayin'.&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<p>This is a dashboard-style layout that uses Bootstrap 3. You can use this template as a starting point to create something more unique.</p>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<p>Visit the Bootstrap Playground at <a href="http://bootply.com">Bootply</a> to tweak this layout or discover more useful code snippets.</p>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="table-responsive">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<table class="table table-striped">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<thead>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<th>Visits</th>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<th>ROI</th>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<th>Source</th>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</thead>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tbody>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>45</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>2.45%</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>Direct</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>289</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>56.2%</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>Referral</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>98</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>25%</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>Type</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>..</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>..</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>..</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>..</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>..</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<td>..</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tbody>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="panel panel-default">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="panel-heading">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="panel-title">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<i class="glyphicon glyphicon-wrench pull-right"></i>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<h4>Post Request</h4>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="panel-body">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<form class="form form-vertical">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="control-group">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<label>Name</label>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="controls">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<input type="text" class="form-control" placeholder="Enter Name">&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="control-group">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<label>Message</label>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="controls">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<textarea class="form-control"></textarea>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="control-group">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<label>Category</label>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="controls">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<select class="form-control">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<option>options</option>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</select>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="control-group">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<label></label>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="controls">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<button type="submit" class="btn btn-primary">&ndash;%&gt;--%>
                <%--&lt;%&ndash;Post&ndash;%&gt;--%>
                <%--&lt;%&ndash;</button>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</form>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<!--/panel content-->&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<!--/panel-->&ndash;%&gt;--%>

                <%--&lt;%&ndash;<div class="panel panel-default">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="panel-heading">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="panel-title">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<h4>Engagement</h4></div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="panel-body">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="col-xs-4 text-center"><img src="http://placehold.it/80/BBBBBB/FFF" class="img-circle img-responsive"></div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="col-xs-4 text-center"><img src="http://placehold.it/80/EFEFEF/555" class="img-circle img-responsive"></div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="col-xs-4 text-center"><img src="http://placehold.it/80/EEEEEE/222" class="img-circle img-responsive"></div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<!--/panel-->&ndash;%&gt;--%>

                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--<!--/col-span-6-->--%>

            </div>
            <!--/row-->

            <hr>

            <%--<a href="#"><strong><i class="glyphicon glyphicon-comment"></i> Discussions</strong>--%>
            <%--<hr>--%>

            <%--<div class="row">--%>
            <%--<div class="col-md-12">--%>
            <%--<ul class="list-group">--%>
            <%--<li class="list-group-item"><a href="#"><i class="glyphicon glyphicon-flash"></i> <small>(3 mins ago)</small> The 3rd page reports don't contain any links. Does anyone know why..</a></li>--%>
            <%--<li class="list-group-item"><a href="#"><i class="glyphicon glyphicon-flash"></i> <small>(1 hour ago)</small> Hi all, I've just post a report that show the relationship betwe..</a></li>--%>
            <%--<li class="list-group-item"><a href="#"><i class="glyphicon glyphicon-heart"></i> <small>(2 hrs ago)</small> Paul. That document you posted yesterday doesn't seem to contain the over..</a></li>--%>
            <%--<li class="list-group-item"><a href="#"><i class="glyphicon glyphicon-heart-empty"></i> <small>(4 hrs ago)</small> The map service on c243 is down today. I will be fixing the..</a></li>--%>
            <%--<li class="list-group-item"><a href="#"><i class="glyphicon glyphicon-heart"></i> <small>(yesterday)</small> I posted a new document that shows how to install the services layer..</a></li>--%>
            <%--<li class="list-group-item"><a href="#"><i class="glyphicon glyphicon-flash"></i> <small>(yesterday)</small> ..</a></li>--%>
            <%--</ul>--%>
            <%--</div>--%>
            <%--</div>--%>
        </div>
        <!--/col-span-9-->
    </div>
</div>
<!-- /Main -->

<footer class="text-center">Credits: This Bootstrap 3 dashboard layout is compliments of <a
        href="http://www.bootply.com/85850"><strong>Bootply.com</strong></a></footer>

<%--<div class="modal" id="addWidgetModal">--%>
<%--<div class="modal-dialog">--%>
<%--<div class="modal-content">--%>
<%--<div class="modal-header">--%>
<%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>--%>
<%--<h4 class="modal-title">Add Widget</h4>--%>
<%--</div>--%>
<%--<div class="modal-body">--%>
<%--<p>Add a widget stuff here..</p>--%>
<%--</div>--%>
<%--<div class="modal-footer">--%>
<%--<a href="#" data-dismiss="modal" class="btn">Close</a>--%>
<%--<a href="#" class="btn btn-primary">Save changes</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<!-- /.modal-content -->--%>
<%--</div>--%>
<%--<!-- /.modal-dalog -->--%>
<%--</div>--%>
<!-- /.modal -->
<!-- script references -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>