<%-- 
    Document   : register
    Created on : Jan 19, 2021, 10:46:36 PM
    Author     : abhi
--%>

<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Chat App</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!--<link type="text/css" rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.min.css"/>-->


    <!--icons-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


    <style>

        body {
            background-color: #f9f9f9;
        }


        @media (max-width: 600px) {
            body {
                background-color: white
            }

            .card {
                border: none !important;
            }
        }
    </style>

</head>
<body style="">

    <div class="container" style="margin-top: 35px;">

    <%
        HashMap<String,String> response_data = (HashMap<String, String>) session.getAttribute("response_data");
        if (response_data != null) {
    %>
    <br/>
    <div class='row'>
        <div class='col col-lg-10 col-sm-11 mx-lg-auto mx-sm-auto'>
            <div class='alert alert-danger alert-dismissible fade show' role='alert'>
                <% out.print(response_data.get("message")); session.removeAttribute("response_data");%>
                <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                    <span aria-hidden='true'>&times;</span>
                </button>
            </div>
        </div>
    </div>
    <%
        }
    %>

    <div class="card " id="crd">
        <div class="row">
            <div class="col col-lg-6 col-sm-12">
                <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel" style="height: 100%;">
                   <img src="images/2.jpg" class="d-block w-100" alt="..." style="height: 100%">
                </div>
            </div>
            <div class="col-lg-6 col-sm-12">
                <center>
                    <h1 class="mb-2 mt-3" style="color: #7366FF;">SIGN UP</h1>
                </center>
                <br/>


                <div class="row">
                    <div class="col col-lg-11 col-sm-11 mx-lg-auto mx-sm-auto">
                        <form method="POST" action="SignUp">
                            <div class="form-group">
                                <label>First Name</label>
                                <input class="form-control" value="${sessionScope.old_data.get("fname")}" id="fname" type="text" placeholder="Your First Name"
                                       name="fname" required/>
                            </div>
<!--                            <br/>-->
                            <div class="form-group">
                                <label>Last Name</label>
                                <input class="form-control" value="${sessionScope.old_data.get("lname")}" id="lname" type="text" placeholder="Your Last Name"
                                       name="lname" required/>
                            </div>
                            <!--<br/>-->
                            <div class="form-group">
                                <label>Email</label>
                                <input class="form-control" value="${sessionScope.old_data.get("email")}" id="email" type="email" placeholder="Your Valid Email"
                                       name="email" required/>
                            </div>
                            <!--<br/>-->
                            <div class="form-group">
                                <label>Password</label>
                                <input class="form-control" id="password" type="password"
                                       placeholder="Enter Your Password" required/>
                            </div>
                            <!--<br/>-->
                            <div class="form-group">
                                <label>Conform Password</label>
                                <input class="form-control" id="conformPassword" type="password"
                                       placeholder="Conform Your Password" name="password" required/>
                            </div>
                            <br/>
                            <!--<br/>-->
                            <center>
                                <button class="btn btn-lg mb-4" type="submit"
                                        style="background-color:#7366FF; color: #ffffff;">CREATE ACCOUNT
                                </button>
                            </center>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

<!--validate-->
<script src="https://cdn.rawgit.com/PascaleBeier/bootstrap-validate/v2.2.0/dist/bootstrap-validate.js"></script>
<script src="js/register_validate.js"></script>

</body>
</html>