<%@page import="java.io.InputStream"%>
<%@page import="com.mycompany.foodi.helper.Helper"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.foodi.entities.Category"%>
<%@page import="com.mycompany.foodi.dao.PostDao"%>
<%@page import="com.mycompany.foodi.helper.ConnectionProvider" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Foodie</title>
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css" integrity="sha384-QYIZto+st3yW+o8+5OHfT6S482Zsvz2WfOzpFSXMF9zqeLcFV0/wlZpMtyFcZALm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <!--js-->
        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    </head>
    <style>
        /* Add a black background color to the top navigation */
        .topnav {
            background-color: #333;
            overflow: hidden;
        }

        /* Style the links inside the navigation bar */
        .topnav a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        /* Add an active class to highlight the current page */
        .active {
            background-color: #dd710be5;
            color: white;
        }

        /* Hide the link that should open and close the topnav on small screens */
        .topnav .icon {
            display: none;
        }

        /* Dropdown container - needed to position the dropdown content */
        .dropdown {
            float: left;
            overflow: hidden;
        }

        /* Style the dropdown button to fit inside the topnav */
        .dropdown .dropbtn {
            font-size: 17px;
            border: none;
            outline: none;
            color: white;
            padding: 14px 16px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
        }

        /* Style the dropdown content (hidden by default) */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        /* Style the links inside the dropdown */
        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
            border-radius: 20px;
        }

        /* Add a dark background on topnav links and the dropdown button on hover */
        .topnav a:hover, .dropdown:hover .dropbtn {
            background-color: #555;
            color: white;
        }

        /* Add a grey background to dropdown links on hover */
        .dropdown-content a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Show the dropdown menu when the user moves the mouse over the dropdown button */
        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* When the screen is less than 600 pixels wide, hide all links, except for the first one ("Home"). Show the link that contains should open and close the topnav (.icon) */
        @media screen and (max-width: 600px) {
            .topnav a:not(:first-child), .dropdown .dropbtn {
                display: none;
            }
            .topnav a.icon {
                float: right;
                display: block;
            }
        }



        /*search */
        body {
            font-family: "Open Sans", sans-serif;
            background: #f6f9ff;
            color: #444444;
        }

        .height{

            height: 17vh;
        }

        .form{

            position: relative;
        }

        .form .fa-search{

            position: absolute;
            top:20px;
            left: 20px;
            color: #9ca3af;

        }

        .form span{

            position: absolute;
            right: 17px;
            top: 13px;
            padding: 2px;
            border-left: 1px solid #d1d5db;

        }

        .left-pan{
            padding-left: 7px;
        }

        .left-pan i{

            padding-left: 10px;
        }

        .ash2{
            /*            padding-inline-start: 550px;
                        margin-right: 450px;*/
            /*padding: 20px;*/

        }
        .form-input{

            height: 55px;
            text-indent: 36px;
            font-size: larger;
            border-radius: 78px;
            padding-left: 9px;
            padding-right: 99px;
            margin-top: -127px;

        }

        .form-input:focus{

            box-shadow: none;
            border:none;
        }
        .container{
            /*            padding-left: 180px ;
                        padding-right: 0px;
                        font-weight: 400;*/


        }
        .container_bar{
            /*            padding-left: 3px ;
                        padding-right: 660px;
                        font-weight: 400;*/


        }

        .voucher-details .voucher-percent {
            display: inline-block;
            position: relative;
            width: max-content;
            text-align: center;
            border-radius: 10px;
            background-color: #6D6BED;
            color: #fff;
            font-size: 14px;
            line-height: 14px;
            padding: 4px 8px;
            font-weight: 700
        }
        footer{
            text-align: center;
            background: black;
            color: white;
            padding: 9px 20px;
            margin-top: 20px;
        }
        .list-group{
            background-color: #333;
        }

        element.style {
        }


        .sidebar {
            position: fixed;
            top: 60px;
            left: 0;
            bottom: 0;
            width: 300px;
            z-index: 996;
            transition: all 0.3s;
            padding: 20px;
            overflow-y: auto;
            scrollbar-width: thin;
            scrollbar-color: #aab7cf transparent;
            box-shadow: 0px 0px 20px rgba(1, 41, 112, 0.1);
            background-color: #fff;
        }
        *, ::after, ::before {
            box-sizing: border-box;
        }
        user agent stylesheet
        aside {
            display: block;
        }

        .product-card:hover{
            cursor: pointer;
            background: lightgray;
        }
        header .cart-item{
            cursor: pointer;
            ;
            font-size: 1.7rem;
            text-align: center;
            height: 4.5rem;
            margin-left: 0.5rem;
            line-height: 4.5rem;
            color: var(--black);
            border-radius: 50%;
            width: 4.5rem;
            background-color: #ffff;
        }
        .images{
            padding: 570px;
            margin: 8px;
        }
        .card-img-top-pro{
            width: 100%;
            margin: 83px;
            padding: 18px;
            border: 0.1px solid black;
            background-color: #ffff;
            margin-top: -79px;
            border-top-left-radius: calc(0.25rem - 1px);
            border-top-right-radius: calc(0.25rem - 1px);
        }



    </style>
    <script>
        /* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
        function myFunction() {
        var x = document.getElementById("myTopnav");
        if (x.className === "topnav") {
        x.className += " responsive";
        } else {
        x.className = "topnav";
        }
        }


    </script>

    <body>
        <div class="Home" id="Home">
            <div class="topnav" id="myTopnav">
                <a href="Home_page.jsp" class="active">Home</a>
                <a href="#news">Location</a>
                <a href="#contact">Contact</a>
                <div class="dropdown">
                    <button class="dropbtn">Dropdown
                        <i class="fa fa-caret-down"></i>
                    </button>
                    <div class="dropdown-content">
                        <a href="#">Category</a>
                        <a href="#">Product</a>
                        <a href="#">Link 3</a>
                    </div>
                </div>
                <a class="text_" href="login.jsp">Logout</a>
                <a id="#" class="fas fa-shopping-cart cart-shop" data-toggle="modal" data-target="#cart"  style="margin:2px"><span class="cart-item" style="font-size:16px">(0)</span></a> 
            </div>
            <br>
            <div class="container-fluid" id="ash1">
                <center><h1></h1>
                    <br>
                </center>
            </div>


            <div class="container_bar">
                <div class="row mt-4">
                    <div class="col-md-2">
                        <!--category-->
                        <%
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mycart", "root", "shripad@123");
                            PreparedStatement pstmt = con.prepareStatement("select * from category");
                            ResultSet set = pstmt.executeQuery();
                            int i = 0;
                            int[] categoryId = new int[100];
                            String[] categoryTitle = new String[100];
                            String[] categoryDescription = new String[100];
                            while (set.next()) {
                                categoryId[i] = set.getInt("categoryId");
                                categoryTitle[i] = set.getString("categoryTitle");
                                categoryDescription[i] = set.getString("categoryDescription");
                                i++;
                            }

                        %>
                        <div class="list-group">
                            <a href="#" class="list-group-item list-group-item-action active ">
                                <h2 >All Category</h2>  

                            </a>
                            <!--<a href="#" class="list-group-item list-group-item-action"></a>-->
                            <%for (int j = 0; j < i; j++) {
                            %>
                            <li class="list-group-item"><%= categoryTitle[j]%></li>
                                <%}%>
                        </div>


                    </div>




                    <div class="col-md-10">
                        <div class="row height d-flex justify-content-center align-items-center">
                            <div class="contain">
                                <div class="row ">
                                    <div class="ash2 col">

                                        <div class="form" >
                                            <i class="fas fa-search" id="search"></i>
                                            <input type="text" class="form-control form-input" placeholder="Search For places,foods">
                                            <span class="left-pan"><i class="fa fa-microphone"></i></span>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>


                        <!--                        <div class="row mt-3">
                                                    <div class=" col-md-3" >
                        
                                                        <div class="card-img-top-pro">
                                                            <img src="https://static01.nyt.com/images/2017/03/24/dining/24COOKING-CLASSICPANCAKES/24COOKING-CLASSICPANCAKES-superJumbo.jpg" class="card-img-top" alt="...">
                                                        </div> 
                        
                                                        <div class="column">
                                                            <div class="card-img-top-pro">
                                                                <img src="https://www.simplyrecipes.com/thmb/CWzxvl8dpC_zkjjRqEE6fBCS6DQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Homemade-Pizza-Dough-Lead-Shot-1c-c2b1885d27d4481c9cfe6f6286a64342.jpg" class="card-img-top" alt="...">
                                                            </div>
                                                        </div>
                                                        <div class="card-img-top-pro">
                                                            <img src="https://media.istockphoto.com/id/1206323282/photo/juicy-hamburger-on-white-background.jpg?s=612x612&w=0&k=20&c=K0DxyiChLwewXcCy8aLjjOqkc8QXPgQMAW-vwRCzqG4=" class="card-img-top" alt="...">
                                                        </div>
                                                        <div class="card-img-top-pro">
                                                            <img src="https://media.istockphoto.com/id/157431311/photo/turkey-sandwich.jpg?s=612x612&w=0&k=20&c=uB6byErFAnWxFkkAqMiGNRJGE8r3nqsSDdqrfBE8HOA=" class="card-img-top" alt="...">
                                                        </div>
                        
                                                    </div>
                        
                                                </div>-->
                        <div class="row mt-4">



                            <%

                                PreparedStatement pstmt1 = con.prepareStatement("select * from product");
                                ResultSet set1 = pstmt1.executeQuery();

                                int k = 0;
                                int[] pId = new int[100];
                                String[] pName = new String[100];
                                String[] pDescription = new String[100];
                                InputStream[] pPhoto = new InputStream[100];
                                int[] pPrice = new int[100];
                                int[] pDiscount = new int[100];
                                int[] pQuantity = new int[100];
                                int[] temp = new int[100];
                                //                                String[] pDescription1 = new String[100];

                                while (set1.next()) {
                                    pId[k] = set1.getInt("pId");
                                    pName[k] = set1.getString("pName");
                                    pDescription[k] = set1.getString("pDescription");
                                    pPhoto[k] = set1.getBinaryStream("pPhoto");
                                    pPrice[k] = set1.getInt("pPrice");
                                    pDiscount[k] = set1.getInt("pDiscount");
                                    pQuantity[k] = set1.getInt("pQuantity");

                                    int d = (int) (pDiscount[k] / 100.0 * pPrice[k]);
                                    temp[k] = pPrice[k] - d;
                                    k++;
                                }

                            %>


                            <% for (int c = 0; c < k; c++) {
                            %>


                            <div class=" col-md-3 " >
                                <div class="card product-card" style="width: 18rem; ">
                                    <div class="card-body">
                                        <h4 class="card-title"><%= pName[c]%></h4>
                                        <p class="card-text" > <%= pDescription[c]%> <br></p>
                                        <span  class="btn-outline-success" > Rs.<%= temp[c]%>/-</span>
                                        <p class="voucher-rate">
                                            <span class="value " style="text-decoration: line-through;">Rs. <%= pPrice[c]%>/-   </span>
                                            <span>  Save <%= pDiscount[c]%>% </span>
                                        </p>
                                        <span>Quantity: <%= pQuantity[c]%></span>  
                                        <br>
                                        <a href="#" class="btn btn-primary" onclick="add_to_cart(<%=pId[c]%>, '<%=pName[c]%>',<%= temp[c]%>)">Click here</a>
                                    </div>
                                </div>
                            </div>
                            <%}%>

                        </div>







                        <div class="container-fluid">
                            <h2 class="collection-container">Close to you</h2>
                            <div class="row ">
                                <div class=" col-md-3" >
                                    <div class="card" style="width: 18rem; ">
                                        <img src="https://media.istockphoto.com/id/1206323282/photo/juicy-hamburger-on-white-background.jpg?s=612x612&w=0&k=20&c=K0DxyiChLwewXcCy8aLjjOqkc8QXPgQMAW-vwRCzqG4=" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <h4 class="card-title">Pan cakes</h4>
                                            <p class="card-text" > Shree Sai Cafe <br>231m, Shaniwar Peth</p>
                                            <p class="voucher-rate">
                                                <span class="value"> Save 10% </span>
                                            </p>
                                            <a href="#" class="btn btn-primary">Click here</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-3">
                                    <div class="card" style="width: 18rem;">
                                        <img src="https://www.simplyrecipes.com/thmb/CWzxvl8dpC_zkjjRqEE6fBCS6DQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Homemade-Pizza-Dough-Lead-Shot-1c-c2b1885d27d4481c9cfe6f6286a64342.jpg" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <h5 class="card-title"> Special Pizza</h5>
                                            <p class="card-text">Granny Amma's Pizaa<br>401m,Shivaji nagar</p>
                                            <p class="voucher-rate">
                                                <span class="value"> Save 11% </span>
                                            </p>
                                            <a href="#" class="btn btn-primary">Click here</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-3" >
                                    <div class="card" style="width: 18rem;">
                                        <img src="https://media.istockphoto.com/id/1206323282/photo/juicy-hamburger-on-white-background.jpg?s=612x612&w=0&k=20&c=K0DxyiChLwewXcCy8aLjjOqkc8QXPgQMAW-vwRCzqG4=" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <h5 class=card-title>Burger</h5>
                                            <p class="card-text">Burger Kings<br>230m,Shanti peth</p>
                                            <p class="voucher-rate">
                                                <span class="value"> Save 12% </span>
                                            </p>
                                            <a href="#" class="btn btn-primary">Click here</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3" >
                                    <div class="card" style="width: 18rem;">
                                        <img src="https://media.istockphoto.com/id/157431311/photo/turkey-sandwich.jpg?s=612x612&w=0&k=20&c=uB6byErFAnWxFkkAqMiGNRJGE8r3nqsSDdqrfBE8HOA=" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <h5 class="card-title">Crispy Sandwich</h5>
                                            <p class="card5 card-text">The Sandwich Corner <br> 487m,shanivar peth</p>
                                            <p class="voucher-rate">
                                                <span class="value"> Save 11% </span>
                                            </p>
                                            <a href="#" class="btn btn-primary">Click here</a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <br>
                        <br>
                        <!--container2-->
                        <div class="container-fluid">
                            <h2 class="collection-container">Easy on Pocket, Best in Taste!</h2>
                            <div class="row">
                                <div class=" col-3" >
                                    <div class="card" style="width: 18rem; ">
                                        <img src="https://t4.ftcdn.net/jpg/04/05/17/95/360_F_405179537_tTBUdIy8hXDBWP5lpLLGuzM5ZXx5nruX.jpg" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <h4 class="card-title">Paper-Dosa</h4>
                                            <p class="card-text">Balaji Cafe <br>241m, Shaniwar Peth</p>
                                            <p class="voucher-rate">
                                                <span class="value"> Save 20% </span>
                                            </p>
                                            <a href="#" class="btn btn-primary">Click here</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-3">
                                    <div class="card" style="width: 18rem;">
                                        <img src="https://www.foodieist.com/wp-content/uploads/2021/02/dfsfs.jpg" alt="...">
                                        <div class="card-body">
                                            <h5 class="card-title"> Udid-Vada</h5>
                                            <p class="card-text">South Anna's Pizaa<br>434m,Shivaji nagar</p>
                                            <p class="voucher-rate">
                                                <span class="value"> Save 10% </span>
                                            </p>
                                            <a href="#" class="btn btn-primary">Click here</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-3" >
                                    <div class="card" style="width: 18rem;">
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSddqhwfsQKuE_WQ3Gs2Gekd8991eWOxObPunBUCSP6dIQOGyItl3LYc9Ai8ypnMqt9uZqv8WvA4Uw&usqp=CAU&ec=48665699" alt="...">
                                        <div class="card-body">
                                            <h4 class=card-title>Non-veg Thali</h4>
                                            <p class="card-text">Dreams cafe<br>230m,Guru peth</p>
                                            <p class="voucher-rate">
                                                <span class="value"> Save 17% </span>
                                            </p>
                                            <a href="#" class="btn btn-primary">Click here</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3" >
                                    <div class="card" style="width: 18rem;">
                                        <img src="https://t4.ftcdn.net/jpg/04/35/23/83/360_F_435238390_8xLSPJbpRppo2ZTVeR9gaJs17svK7OE6.jpg" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <h5 class="card-title">Special Chaat</h5>
                                            <p class="card5 card-text">The Ganesha corner <br> 345m,v.m peth</p>
                                            <p class="voucher-rate">
                                                <span class="value"> Save 25% </span>
                                            </p>
                                            <a href="#" class="btn btn-primary">Click here</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <br>
                        <br>
                        <!--container3-->
                        <div class="container-fluid">
                            <h2 class="collection-container">Top Buffet Places In Pune</h2>
                            <div class="row">
                                <div class=" col-3" >
                                    <div class="card" style="width: 18rem; ">
                                        <img src="https://media-cdn.tripadvisor.com/media/photo-s/16/7c/72/e6/mainland-china.jpg" class="card-img-top" alt="..">
                                        <div class="card-body">
                                            <h4 class="card-title">Mainland China</h4>
                                            <p class="card-text" > 9Km, Amnora Park Town</p>
                                            <p class="voucher-rate">
                                                <span class="value"> Save 50% </span>
                                            </p>
                                            <a href="#" class="btn btn-primary">Click here</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-3">
                                    <div class="card" style="width: 18rem;">
                                        <img src="https://pix10.agoda.net/hotelImages/165/165256/165256_14052319340019555898.jpg?ca=2&ce=1&s=1024x768" alt="...">
                                        <div class="card-body">
                                            <h5 class="card-title">WYNKK</h5>
                                            <p class="card-text">14Km,Shivaji nagar</p>
                                            <p class="voucher-rate">
                                                <span class="value" > Save 40% </span>
                                            </p>
                                            <a href="#" class="btn btn-primary">Click here</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-3" >
                                    <div class="card" style="width: 18rem;">
                                        <img src="https://images.unsplash.com/photo-1556035511-3168381ea4d4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bmVvbiUyMGJhcnxlbnwwfHwwfHw%3D&w=1000&q=80" alt="...">
                                        <div class="card-body">
                                            <h4 class=card-title>Neon Pub</h4>
                                            <p class="card-text">23Km,Guru Peth</p>
                                            <p class="voucher-rate">
                                                <span class="value"> Save 35% </span>
                                            </p>
                                            <a href="#" class="btn btn-primary">Click here</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3" >
                                    <div class="card" style="width: 18rem;">
                                        <img src="https://i.ebayimg.com/images/g/oOwAAOSwakxir5Wy/s-l1600.jpg" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <h5 class="card-title">In-Green Hotel</h5>
                                            <p class="card5 card-text">45km,Atul peth</p>
                                            <p class="voucher-rate">
                                                <span class="value"> Save 45% </span>
                                            </p>
                                            <a href="#" class="btn btn-primary">Click here</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!--            <div class="row height d-flex justify-content-center align-items-center">
                            <div class="contain">
                                <div class="row ">
                                    <div class="ash2 col">
            
                                        <div class="form" >
                                            <i class="fas fa-search" id="search"></i>
                                            <input type="text" class="form-control form-input" placeholder="Search For places,foods">
                                            <span class="left-pan"><i class="fa fa-microphone"></i></span>
                                        </div>
            
                                    </div>
                                </div>
                            </div>
            
                        </div>-->
        </div>





        <footer>
            <div class="center">
                copyright &copy;  www.Foodie.com All rights reserved!
            </div>
        </footer>
        <%@include file="components/common_modal.jsp" %>
    </body>
</html>

<!--custom js file-->
<script src="js/script.js"></script>

<script>

                                            function add_to_cart(pid, pname, pprice) {
                                            let cart = localStorage.getItem("cart"); //string
                                            if (cart == null) {
                                            //no cart
                                            let products = [];
                                            let product = {productId: pid, productName: pname, productPrice: pprice, productQunatity: 1}

                                            products.push(product);
                                            localStorage.setItem("cart", JSON.stringify(products));
                                            console.log("Product is added ");
                                            } else {
                                            //cart is already present
                                            let pcart = JSON.parse(cart); // js array
                                            let oldProduct = pcart.find((Item) => Item.productId == pid);
                                            if (oldProduct) {
                                            // we will increase the quantity
                                            oldProduct.productQunatity = oldProduct.productQunatity + 1;
                                            pcart.map((Item) => {
                                            if (Item.productId == oldProduct.productId) {
                                            Item.productQunatity = oldProduct.productQunatity;
                                            }
                                            })
                                                    localStorage.setItem("cart", JSON.stringify(pcart));
                                            console.log("Product qunatity is increase ");
                                            } else {

                                            // product already present
                                            let product = {productId: pid, productName: pname, productPrice: pprice, productQunatity: 1}
                                            pcart.push(product);
                                            localStorage.setItem("cart", JSON.stringify(pcart));
                                            console.log("Product is added ");
                                            }
                                            }

                                           
                                            }

//update cart

                                           function updateCart() {
                                            let cartString = localStorage.getItem("cart");
                                            let cart = JSON.parse(cartString);
                                            if (cart == null || cart.length == 0) {
                                            console.log("Cart is Empty !!");
                                            $(".cart-item").html("(0)");
                                            $(".cart-body").html("<h3>Cart does not have any item</h3>");
                                            $(".checkout-btn").addClass('disable');
                                            } else {
                                            //there is something
                                            console.log(cart);
                                            }
                                            }`

                                           ` $(document).ready(function () {

                                            updateCart()
                                                    })

                                                    let table =
                                                    <table class='table'>
        <thead class='thread-light'>
            <tr>
            <th> Item Name</th>
<th> Item Price</th>
        <th> Item Quantity</th>
        <th> Total Quantity</th>
        <th> Item Price</th>
        <th> Action</th>
            </tr>
            
        </thead>
        
        ;
        let totalPrice = 0;
        
        
        cart.map((item) => {
                                                    table += <tr>
        <td>${item.productName}</td>     
        <td>${item.productPrice}</td>  
            <td>${item.productQuantity}</td>  
            <td>${item.productQuantity*item.productPrice}</td>  
                <td><button class='btn btn-danger bt-sm'>Remove</button></td>  
                </tr>

                                                    totalPrice += item.productPrice * item.productQuantity;
            })
            table = table + 
            <tr><td class='text-right font-weight-bold m-5'> Total Price: ${totalPrice}</td></tr>
        </table>`
                                                    $(".cart-body").html(table);
                                                }

                                            }

                                            

            </script>