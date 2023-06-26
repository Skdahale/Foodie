<%-- 
    Document   : signup
    Created on : Mar 14, 2023, 7:04:15 PM
    Author     : 91860
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

        <style>
            body{
                background: url('images/sign_bg_image.jpg') no-repeat center fixed ;
                background-size: cover;
            }

            .container{
                width: 30%;
                padding: 35px
                    border: 2px solid black;
                border-radius: 24px;
                margin: auto;
                text-align: center;
                align-content:
                    font-size: 50px;
                background-color: white;

            }
            .bts{
                margin-right: 20px;
                padding: 10px;
                color: #0c0202;
                background-color: #1fe0f2;

            }
            .form{
                border: 0;
                font-size: 14px;
                color: #012970;
                border: 1px solid rgba(1, 41, 112, 0.2);
                padding: 7px 38px 7px 8px;
                border-radius: 3px;
                transition: 0.3s;
                width: 100%;

            }
            .card{
                width: 470px;
                overflow: hidden;
                margin: auto;
                margin: 20 0 0 450px;
                padding: 4px;
                background: #272346;
                border-radius: 15px;
            }
            #Rtext{
                color: white;
            }

            textarea:focus, input:focus {
                color: white;
            }
            element.style {
            }
            .g-3, .gy-3 {
                --bs-gutter-y: 1rem;
            }
            .g-3, .gx-3 {
                --bs-gutter-x: 1rem;
            }
            .row {
                --bs-gutter-x: 1.5rem;
                --bs-gutter-y: 0;
                display: flex;
                flex-wrap: wrap;
                margin-top: calc(-1 * var(--bs-gutter-y));
                margin-right: calc(-.5 * var(--bs-gutter-x));
                margin-left: calc(-.5 * var(--bs-gutter-x));
            }
            *, ::after, ::before {
                box-sizing: border-box;
            }
            user agent stylesheet
            form {
                display: block;
                margin-top: 0em;
            }
            .card-body {
                flex: 1 1 auto;
                padding: var(--bs-card-spacer-y) var(--bs-card-spacer-x);
                
            }
           
        </style>

    </head>


    <body>
        <%--<%@include   file="components/Navbar.jsp"%>--%>
        <div class="container-fluid">

            <div class="container center-align">
                <div class="card">
                    <%@include   file="components/message.jsp" %>
                    <div class="card-body px-5">

                        <h2 id="Rtext">Register NOW!!</h2>
                        <h5 id="msg"></h5>
                        <div class="form  center-align" >


                            <form action="RegisterServlet" method="post" id="myform" >

                                <table>

                                    <input type="text" name="user_name" placeholder="Enter name"/>
                                    <input type="email" name="user_email" placeholder="Enter email"/>
                                    <input type="password" name="user_password" placeholder="Enter password"/>
                                    <input type="number" name="user_phone" placeholder="Enter Phone Number"/>
                                    <input type="text" name="user_type" placeholder="Enter user type"/>

                                    <div class="from-group">

                                        <textarea name="user_address" style="height:100px" placeholder="Enter your Address"></textarea>
                                    </div>

                                    <div class="file-field input-field">
                                        <div class="btn 1fe0f2">
                                            <span>File</span>
                                            <input name="image" type="file">
                                        </div>
                                        <div class="file-path-wrapper">
                                            <input class="file-path validate" type="text">
                                        </div>

                                    </div>

                                    <from action="Home_page.jsp">
                                        <button class="bts center-align" type="submit">Register</button>
                                    </from>

                                </table>
                                <a href="login.jsp" class="center-align d-block mb-4">If Register Click here</a>
                            </form> 

                        </div>
                    </div>
                </div>
                <div class="loader center-align" style="margin-top: 23px; display:none;">
                    <div class="preloader-wrapper big active">
                        <div class="spinner-layer spinner-blue-only">
                            <div class="circle-clipper left">
                                <div class="circle"></div>
                            </div><div class="gap-patch">
                                <div class="circle"></div>
                            </div><div class="circle-clipper right">
                                <div class="circle"></div>
                            </div>
                        </div>
                    </div>

                    <div class="preloader-wrapper active">
                        <div class="spinner-layer spinner-red-only">
                            <div class="circle-clipper left">
                                <div class="circle"></div>
                            </div><div class="gap-patch">
                                <div class="circle"></div>
                            </div><div class="circle-clipper right">
                                <div class="circle"></div>
                            </div>
                        </div>
                    </div>

                    <div class="preloader-wrapper small active">
                        <div class="spinner-layer spinner-green-only">
                            <div class="circle-clipper left">
                                <div class="circle"></div>
                            </div><div class="gap-patch">
                                <div class="circle"></div>
                            </div><div class="circle-clipper right">
                                <div class="circle"></div>
                            </div>
                        </div>
                    </div>
                    <h5>Plz wait...</h5>
                </div>
            </div>


        </div>
        <script
            src="https://code.jquery.com/jquery-3.6.4.min.js"
            integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
        crossorigin="anonymous"></script>

        <script>
            $(document).ready(function () {
            console.log("Ready to go....");
                    $("#myform").on('submit', function(event)){
            event.preventDefault();
//                    var f = $(this).serialize();
                    let f = new FromData(this);
                    console.log(f);
                    $(".loader").show();
                    $(".form").hide();
                    if (data.trim === 'done') {
            ${'#msg'}.html("Succesfully Regiter");
            } else {
            ${'#msg'}.html("Somethind went wrong");
            }

            $.ajax({
            url:"Register",
                    data:f,
                    type: 'POST',
                    success:function(data, textStatus, jqXHR){
                    console.log(data);
                            console.log("SUCCESS");
                            $(".loader").hide();
                            $(".form").show();
                    },
                    error:function(jqXHR, textstatus, errorThrown){
                    console.log(data);
                            console.log("ERROR");
                            $(".loader").show();
                            $(".form").hide();
                    }
            processData:false,
                    contenType:false,
            }),
            });
            }
        </script>

    </body>
</html>
