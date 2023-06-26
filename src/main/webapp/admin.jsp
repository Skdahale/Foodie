<!DOCTYPE html>
<html>
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
        <link rel="stylesheet" href="css/style.css">
        <!--js-->
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
        .admin .card:hover{
            background: #eeee;
            cursor: pointer;
        }
/*        .form-group{
            width: 350px;
        overflow: hidden;
        margin: auto;
        margin: 20 0 0 450px;
        padding: 80px;
        background: #272346;
        border-radius: 15px ;
        }*/



    </style>



    <header>
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
            </div>
            <br>
            <div class="container-fluid" id="ash1">
                <center><h1>Asli savings at million+ stores around you!</h1>
                    <br>
                </center>
            </div>

        </div>


    </header>
    <section>

        <div class="container admin">
            <div class="container-fluid mt-3">
                <%@include    file="components/message.jsp" %>
            </div>
            <div class="row mt-3">

                <div class="col-md-4">
                    <!--first box-->
                    <div class="card">

                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:125px" class="img-fluid rounded-circle" src="images/man.png" alt="alt"/>
                            </div>

                            <h1>213213</h1>
                            <h1>Users</h1>

                        </div>

                    </div>

                </div>
                <div class="col-md-4">
                    <div class="card">

                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width:125px" class="img-fluid" src="images/categories.png" alt="alt"/>
                            </div>
                            <h1>213213</h1>
                            <h1>Categories</h1>

                        </div>

                    </div>

                </div>
                <div class="col-md-4">
                    <div class="card">

                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width:125px" class="img-fluid " src="images/delivery-box.png" alt="alt"/>
                            </div>
                            <h1>213213</h1>
                            <h1>Product</h1>

                        </div>

                    </div>

                </div>
            </div>



            <div class="row mt-3">

                <!--md midem screen   mobile devices-->  

                <div class="col-md-6">     
                    <div class="card" data-toggle="modal"  data-target="#add-category-modal">

                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width:125px" class="img-fluid" src="images/add.png" alt="alt"/>
                            </div>
                            <h1>213213</h1>
                            <h1>Add Category</h1>

                        </div>

                    </div>

                </div>
                <div class="col-md-6">
                    <div class="card">

                        <div class="card-body text-center" data-toggle="modal" data-target="#add-product-modal">
                            <div class="container">
                                <img style="max-width:125px" class="img-fluid " src="images/add-to-basket.png" alt="alt"/>
                            </div>
                            <h1>213213</h1>
                            <h1>Add Product</h1>

                        </div>

                    </div>

                </div>


            </div>
        </div>
    </section>


    <!--add category modal-->





    <!-- Modal -->
    <div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header custom-bg topnav text-white">
                    <h5 class="modal-title" id="exampleModalLabel">Fill category</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <%--<%@include      file="components/message.jsp"%>--%>
                    <form action="ProductOperationServlet_01" method="post">
                        <input type="hidden" name="operation" value="addcategory">
                        
                        <div class="form-group">
                            <input type="text" name="catTitle" placeholder="Enter category title" required />
                        </div>
                        
                        <div class="form-group">
                            <textarea class="form-control " style="height:120px" placeholder="Enter category description" name="catDescription"></textarea>
                        </div>
                        
                        <div class="contnainer text-center">
                            <button class="btn btn-outline-success">Add Category</button>
                             <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
                
            </div>
        </div>
    </div>
    
    <!--add Product-->

        <div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header custom-bg topnav text-white">
                    <h5 class="modal-title" id="exampleModalLabel">Fill Product</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    
                      <form action="ProductOperationServlet_01" method="post">
                          <input type="hidden" name="operation" value="addproduct">
                        
                        <div class="form-group mt-3">
                            <div class="form-group"> <input  type="number" class="form-control" name="ptId" placeholder="Enter Product Id" required /></div>
                            <div class="form-group"> <input type="text" class="form-control" name="ptName" placeholder="Enter Product Name" required /></div>
                            <div class="form-group">
                            <textarea class="form-control" style="height:120px" placeholder="Enter Product description" name="ptDescription"></textarea>
                        </div>
                            
                            <div class="form-group">
                                <select name="categoryId" class="form-control" id="">
                                    <option value="Break_Fast">Break Fast</option>
                                     <option value="Break_Fast">Break Fast</option>
                                      <option value="Break_Fast">Break Fast</option>
                                </select>
                            </div>
                            
                            
                            <div class="form-group">
                                 <div class="btn btn-outline-success">
                                        <div class="btn 1fe0f2">
                                            <span>File</span>
                                            <input name="image" type="file">
                                        </div>
                                       

                                    </div>
                            </div>
                            
                            <div class="form-group"><input type="number" class="form-control" name="ptPrice" placeholder="Enter Product Price" required /></div>
                           
                            
                            <div class="form-group"><input type="number" class="form-control" name="ptDiscount" placeholder="Enter Product Discount" required /></div>
                            <div class="form-group"><input type="number" class="form-control" name="ptQuantity" placeholder="Enter Product Quantity" required /></div>
                            
                        </div>
                        
                        
                        
                        <div class="contnainer text-center">
                            <button class="btn btn-outline-success">Add Product</button>
                             <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
                
            </div>
        </div>
    </div>
                   



</body>
</html>