<%-- 
    Document   : index
    Created on : Jan 19, 2021, 10:18:52 PM
    Author     : abhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Chat App</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <!--<link type="text/css" rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.min.css"/>-->


        <!--icons-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>

            body{
                background-color: #f9f9f9;
            }



            @media (max-width: 600px)  {
                body{background-color: white}
                .card{border: none !important;}
                .container{margin-top: 1%;}
                #carouselExampleFade{display: none;}
            }
        </style>

    </head>
    <body style="">

        <div class="container" style="margin-top: 100px;">


            <%
                Object response_data = session.getAttribute("response_data");
                if (response_data != null) {
            %>
            <br/>
            <div class='row'>
                <div class='col col-lg-10 col-sm-11 mx-lg-auto mx-sm-auto'>
                    <div class='alert alert-danger alert-dismissible fade show' role='alert'>
                        <% out.print(response_data);
                    session.removeAttribute("response_data");%>
                        <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                            <span aria-hidden='true'>&times;</span>
                        </button>
                    </div>
                </div>
            </div>
            <%
                }
            %>

            <div class="card" >
                <div class="row">
                    <div class="col-lg-6 col-sm-12">
                        <br/>
                        <center>
                            <h1 class="mt-lg-5" style="color: #7366FF;">SIGN IN</h1>
                        </center>
                        <br/>

                        <div class="row">
                            <div class="col col-lg-11 col-sm-11 mx-lg-auto mx-sm-auto">
                                <form action="SignIn" method="POST">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input class="form-control" id="email" type="email" placeholder="Your Valid Email" required name="email"/>
                                    </div>
                                    <br/>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input class="form-control" id="password" type="password" placeholder="Enter Your Password" required name="password"/>
                                    </div>
                                    <br/>
                                    <br/>
                                    <!--<br/>-->
                                    <center>
                                        <button class="col-lg-10 col-sm-10 btn btn-lg" type="submit" style="background-color:#7366FF; color: #ffffff;">SIGN IN</button>
                                    </center>
                                </form>
                            </div>
                        </div>
                        <br/>
                        <!--<br/>-->
                        <div class="row">
                            <div class="col-lg-6 col-12 mx-auto text-center ">
                                <a href="#"><h6>Forgot Password</h6></a>
                            </div>
                            <div class="col-lg-6 col-12 mx-auto text-center ">
                                <a href="register.jsp"><h6>New User ? Sign Up here</h6></a>
                            </div>
                        </div>
                        <br/>

                    </div>

                    <div class="col col-lg-6 col-sm-12">
                        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">

                            <img src="images/2.jpg" class="d-block w-100" alt="..." style="height: 100%">
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>



    </body>
</html>