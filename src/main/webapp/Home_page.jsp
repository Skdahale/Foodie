<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Foodie</title>

    <!--css-->
    <link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css" integrity="sha384-QYIZto+st3yW+o8+5OHfT6S482Zsvz2WfOzpFSXMF9zqeLcFV0/wlZpMtyFcZALm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <!--js-->
    <script src="link" href="js/script.js"></script>
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
    @import url('https://fonts.googleapis.com/css2?family=Nunito+Sans:ital,wght@0,600;0,800;1,900&family=Nunito:ital,wght@1,600;1,1000&family=Raleway:ital@1&family=Teko:wght@300&display=swap');

:root{
    --green:#eb8220e5;
    --black: rgb(74, 22, 113);
    --light-color: rgb(170, 151, 151);
    --box-shadow:0.5rem 1.5rem rgba(0,0,0,.1);
}
*{
    /* font-family: 'Nunito', sans-serif; */
/* font-family: 'Nunito Sans', sans-serif;
/* font-family: 'Raleway', sans-serif; */
/* font-family: 'Teko', sans-serif;  */
    
    padding: 3px;
    margin: 0;
    border: none;
    box-sizing: border-box;
    text-decoration: none;
    outline: none;
    text-transform: capitalize;
    transition: all .2s linear;
}
html{
    font-size: 70%;
    overflow-x: hidden;
    scroll-padding-top: 5.5rem;
    scroll-behavior: smooth;
}

header{
    position: fixed;
    top: 0; left: 0; right: 0;
    background: white;
    padding: 1 rem 7%;
    text-align: center;
    display: flex;
    justify-content: space-between;
    z-index: 1000;
    box-shadow: var(--box-shadow);
}

header .logo{
    color: var(--black);
    font-size: 2.5rem;
    font-weight: bolder;
}
header .logo i{
    color: var(--green);
}

header .navbar a{
    font-size: 2rem;
    border-radius: 1rem;
    padding: 0.5rem 2.5rem;
    color: var(--light-color);
}
header .navbar a.active,
header .navbar a:hover{
    color: antiquewhite;
    background-color: var(--green);
}

header .icon a{ 
    cursor: pointer;;
    font-size: 1.7rem;
    text-align: center;
    height: 4.5rem;
    margin-left: 0.5rem;
    line-height: 4.5rem;
    color: var(--black);
    border-radius: 50%;
    width: 4.5rem;
    background-color: #eeee;
}
header .icon i{
    cursor: pointer;;
    font-size: 1.7rem;
    text-align: center;
    height: 4.5rem;
    margin-left: 0.5rem;
    line-height: 4.5rem;
    color: var(--black);
    border-radius: 50%;
    width: 4.5rem;
    background-color: #eeee;
}

header .icon i:hover,
header .icon a:hover{
    color: #eeee;
    background-color: var(--green);
    transform: rotate(360deg);
}
header .icon #menu-bars{
    display: none;
}


section{
    padding: 2rem 9%;
}

.sub-heading{
    text-align: center;
    font-size: 2rem;
    padding-top:1rem ;
    color: var(--green);
}

.heading{
    text-align: center;
    font-size: 3rem;
    padding-bottom:2rem ;
    color: var(--black);
    text-transform: uppercase;
}
.btn{
    font-size: 2rem;
    display: inline-block;
    color: #ffff;
    background-color: var(--black);
    border-radius: 1rem;
    cursor: pointer;
    padding: 1rem 1rem;
    margin-top: 1rem;
}

.btn:hover{
    background: var(--green);
    letter-spacing: .1rem;
}

section:nth-child(even){
    background: white;
}


/* media queries */
@media(max-width:922px){
    html{
        font-size: 50%;
    }
    header{
        padding: 1rem 2rem;
    }
}

@media (max-width:768px) {
    header .icon #menu-bars{
        display: inline-block;
    }

    header .navbar{
        position: absolute;
        top: 100%; left:0; right: 0;
        background: #ffff;
        border-top: 1rem solid brown;
        border-bottom: 1rem solid brown;
        padding: 1rem;

    }
    header .navbar a{
        display: block;
        padding: 1.2rem;
        margin: 2rem;
        font-size: 2rem;
        background: #eeee;
    }
}

/* header section over    */

#search-form{
    position: fixed;
    top: -110%; left: 0;
    height: 100%; width: 100%;
    z-index: 1004;
    display: flex;
    background: rgba(0,0,0,.8);
    align-items: center;
    justify-content: center;
    padding: 0 1rem;
    

}

#search-form.active{
    top: 0;
}
#search-form #search-box{
    width: 50rem;
    border-bottom: .1rem solid rgb(255, 231, 231);
    padding: 1rem 0;
   color: #ffff;
    font-size: 2rem;
    text-transform: none;
    background: none;
}
#search-form #search-box::placeholder{
    color:rgb(242, 228, 228);
}
#search-form #search-box ::-webkit-search-cancel-button{
      -webkit-appearance: none;

}
#search-form label{
     color: black;
     cursor:pointer;
     font-size: 2.7rem;
}
#search-form label:hover{
    color: var(--green);
}



#search-form  #close{
    position:absolute;
    color: aliceblue;
    cursor: pointer;
    top: 2rem ; right:3rem;
    font-size: 3rem;
}
.home .home-slider .slide{
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    gap: 2rem;
    padding-top:9rem ;
}
.home .home-slider .slide .content{
    flex: 1 1 45rem;
}
.home .home-slider .slide .content .image{
  flex: 2 1 50rem;

}

.home .home-slider .slide .content .image img{
   width: 100%;
}
.home .home-slider .slide .content span{
  color: var(--green);
  font-size: 2rem;
}
.home .home-slider .slide .content h2{
    color: var(--black);
    font-size: 7rem;
}
.home .home-slider .slide .content p{
    color: var(--light-color);
    font-size: 1.7rem;
    padding: .5rem 0;
    line-height: 1.5;
}

.swiper-pagination-bullet-active{
    background: var(--green);
}

.dishes .box-container {
   display: grid;
   grid-template-columns: repeat(auto-fit,minmax(22rem,1fr));
   gap: 1.5rem;
    
}

.dishes .box .box-container .row {
    padding: 2.5rem;
    margin: 20px;
    width: 30%;
    background: #ffff;
    border-radius: .5rem;
    
    border: .1rem solid rgba(0,0,0,.2);
    box-shadow: var(--box-shadow);
    position: relative;
    overflow: hidden;
    text-align: center;
        flex-wrap: wrap;
    margin-right: 58px;
    margin-left: -73px;
}

.dishes .box .box-container .fa-heart,
.dishes .box .box-container .fa-eye{
    position:absolute;
    top: 1.5rem;
    background: #eee;
    border-radius: 50%;
    height: 5rem;
    width: 5rem;
    line-height: 5rem;
    font-size: 2rem;
    color: var(--black);
}


.dishes .box .box-container .fa-eye:hover{
    background: var(--green);
    color: #ffff;
}
.dishes .box .box-container .fa-heart:hover{
    background: red;
    color: #ffff;
}

.dishes .box .box-container .fa-heart{
    right: 1.5rem;
}
.dishes .box .box-container .fa-eye{
    left: 1.5rem;
}

.dishes .box .box-container .fa-heart{
    right: -15rem;
}
.dishes .box .box-container .fa-eye{
    left: -15rem;
}
.dishes .box .box-container:hover .fa-heart{
    right: 1.5rem;
}
.dishes .box .box-container:hover .fa-eye{
    left: 1.5rem;
}

.dishes .box .box-container img{
    height: 17rem;
    margin: 1rem 0;

}

.dishes .box .box-container h3{
    color: var(--black);
    font-size: 2rem;
}

.dishes .box .box-container .stars{
    padding: 1rem 0;
}

.dishes .box .box-container .stars i{
    font-size: 1.7rem;
    color: var(--green);
}
.dishes .box .box-container  span{
    color: var(--green);
    font-weight:bolder ;
    margin-right:1rem ;
    font-size: 2.5rem;
}
#contact{
   
    width: 100%;
    height: 100%;
    z-index: -1;
   
     background-image: url('images/c.jpg') no-repeat center center/cover;
     display: flex;
    justify-content: center;
    align-items: center;
    padding-bottom: 34px;
}


</style>

 

<header>
    <a href="#" class="logo"><i class="fas fa-utensils"></i>Foodie</a>

    <nav class="navbar">
        <a class="active" href="#home">Home</a>
        <a href="#dishes">dishes</a>
        <a href="#contact">Contact Us</a>
        <a href="Product.jsp">Product</a>
        <a href="#home">Orders</a>
         <a href="login.jsp">Logout</a>
    </nav>

    <div class="icon">
        <i class="fas fa-bars" id="menu-bars"></i>
        <i class="fas fa-search" id="search-icon"></i>
        <a id="#" class="fas fa-heart"></a>
        <a id="#" class="fas fa-shopping-cart" data-toggle="modal" data-target="#cart"  style="margin:2px"><span class="cart-item" style="font-size:16px">(4)</span></a>   
    </div>

</header>

<form action="" id="search-form">
    <input type="search" placeholder="Search here..." name=" " id="search-box">
    <label for="search-box" class="fas fa-search"></label>
    <i class="fas fa-times" id="close"></i>
</form>

<!-- header section over  -->

<!-- Home section started -->
<section class="home" id="home">
    <div class="swiper mySwiper home-slider">

        <div class="swiper-wrapper wrapper">

            <div class="swiper-slide slide">
               <div class="content">
                <span>Our Special dish</span>
                <h2>Spicy noodles</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate, odio.</p>
                <a href="Product.jsp" class="btn">Order Now</a>
               </div>
               <div class="image">
                <img src="https://www.kitchenathoskins.com/wp-content/uploads/2021/01/thai-spicy-noodles-36-yum.jpg" alt="">
               </div>
            </div>
            <div class="swiper-slide slide">
               <div class="content">
                <span>Our Special dish</span>
                <h2>Fried rice</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate, odio.</p>
                <a href="Product.jsp" class="btn">Order Now</a>
               </div>
               <div class="image">
                <img src="https://theforkedspoon.com/wp-content/uploads/2020/05/Fried-Rice-Recipe-4-500x500.jpg" alt="">
               </div>
            </div>
            <div class="swiper-slide slide">
               <div class="content">
                <span>Our Special dish</span>
                <h2>Hot pizza</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate, odio.</p>
                <a href="Product.jsp" class="btn">Order Now</a>
               </div>
               <div class="image">
                <img src="https://lh3.googleusercontent.com/f66oSt6h750yD7kQQ-gWU7wtl_G8URozeR1FDLyriTt_4MB9_78iMCSUJvb6cbb5lNjl3_Gndx0ANeqUBWHAR_osTl1X1K_ISOnrZktrDw=w512-rw" alt="">
               </div>
            </div>
        </div>

        <div class="swiper-pagination"></div>
    </div>
</section>

<!-- dishes sections -->

<section class="dishes" id="dishes">
    <h3 class="sub-heading">Our dishes</h3>
    <h1 class="heading">Popluar dishes</h1>

    <div class="row">
        <div class="box">
           
                <div class="box-container"  >
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="https://media.istockphoto.com/id/1206323282/photo/juicy-hamburger-on-white-background.jpg?s=612x612&w=0&k=20&c=K0DxyiChLwewXcCy8aLjjOqkc8QXPgQMAW-vwRCzqG4=" alt="">
                 <h3>Burger</h3>
                 <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                 </div>
                 <span>$12.45</span>
                 <a href="#" class="btn">Add to Cart</a>
        
           
        </div>
        </div>
        <div class="box">
            <div class="box-container">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="https://www.simplyrecipes.com/thmb/CWzxvl8dpC_zkjjRqEE6fBCS6DQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Homemade-Pizza-Dough-Lead-Shot-1c-c2b1885d27d4481c9cfe6f6286a64342.jpg" alt="">
                 <h3>Special Pizza</h3>
                 <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                 </div>
                 <span>$12.45</span>
                 <a href="#" class="btn">Add to Cart</a>
        
            </div>
        </div>
        <div class="box">
            <div class="box-container">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="https://media.istockphoto.com/id/157431311/photo/turkey-sandwich.jpg?s=612x612&w=0&k=20&c=uB6byErFAnWxFkkAqMiGNRJGE8r3nqsSDdqrfBE8HOA=" alt="">
                 <h3>Crispy Sandwich</h3>
                 <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                 </div>
                 <span>$12.45</span>
                 <a href="#" class="btn">Add to Cart</a>
        
            </div>
        </div>
        <div class="box">
            <div class="box-container">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="https://static01.nyt.com/images/2017/03/24/dining/24COOKING-CLASSICPANCAKES/24COOKING-CLASSICPANCAKES-superJumbo.jpg" alt="">
                 <h3>Pan cakes</h3>
                 <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                 </div>
                 <span>$12.45</span>
                 <a href="#" class="btn">Add to Cart</a>
        
            </div>
        </div>
        <div class="box">
            <div class="box-container">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="https://t4.ftcdn.net/jpg/04/05/17/95/360_F_405179537_tTBUdIy8hXDBWP5lpLLGuzM5ZXx5nruX.jpg" alt="">
                 <h3>Paper-Dosa</h3>
                 <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                 </div>
                 <span>$12.45</span>
                 <a href="#" class="btn">Add to Cart</a>
        
            </div>
        </div>
        <div class="box">
            <div class="box-container">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="https://www.foodieist.com/wp-content/uploads/2021/02/dfsfs.jpg" alt="">
                 <h3>Udid-Vada</h3>
                 <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                 </div>
                 <span>$12.45</span>
                 <a href="#" class="btn">Add to Cart</a>
        
            </div>
        </div>
        <div class="box">
            <div class="box-container">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSddqhwfsQKuE_WQ3Gs2Gekd8991eWOxObPunBUCSP6dIQOGyItl3LYc9Ai8ypnMqt9uZqv8WvA4Uw&usqp=CAU&ec=48665699" alt="">
                 <h3>Non-veg Thali</h3>
                 <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                 </div>
                 <span>$12.45</span>
                 <a href="#" class="btn">Add to Cart</a>
        
            </div>
        </div>
        <div class="box">
            <div class="box-container">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="https://t4.ftcdn.net/jpg/04/35/23/83/360_F_435238390_8xLSPJbpRppo2ZTVeR9gaJs17svK7OE6.jpg" alt="">
                 <h3>Special Chaat</h3>
                 <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                 </div>
                 <span>$12.45</span>
                 <a href="#" class="btn">Add to Cart</a>
        
            </div>
        </div>
    </div>

</section>

<div class="contact container p-2 rounded-3" id="contact">
            <!--Section: Contact v.2-->
            <section class="mb-4">

              
                     <!--Section heading-->
                <h1 class="h1-responsive font-weight-bold text-center my-4">Contact us</h1  >
                <!--Section description-->
                <p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to
                    contact us directly. Our team will come back to you within
                    a matter of hours to help you.</p>

                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-1"></div>
                    <div class="col-md-8 mb-md-0 mb-5">
                        <form id="contact-form" name="contact-form" action="contact" method="POST">

                            <!--Grid row-->
                            <div class="row">

                                <!--Grid column-->
                                <div class="col-md-6">
                                    <div class="md-form mb-0">
                                        <input type="text" id="name" name="name" class="form-control">
                                        <label for="name" class="">Your name</label>
                                    </div>
                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-md-6">
                                    <div class="md-form mb-0">
                                        <input type="text" id="email" name="email" class="form-control">
                                        <label for="email" class="">Your email</label>
                                    </div>
                                </div>
                                <!--Grid column-->

                            </div>
                            <!--Grid row-->

                            <!--Grid row-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="md-form mb-0">
                                        <input type="text" id="subject" name="subject" class="form-control">
                                        <label for="subject" class="">Subject</label>
                                    </div>
                                </div>
                            </div>
                            <!--Grid row-->

                            <!--Grid row-->
                            <div class="row">

                                <!--Grid column-->
                                <div class="col-md-12">

                                    <div class="md-form">
                                        <textarea type="text" id="message" name="message" rows="2"
                                            class="form-control md-textarea"></textarea>
                                        <label for="message">Your message</label>
                                    </div>

                                </div>
                            </div>
                            <!--Grid row-->

                        </form>

                        <div class="text-center text-md-left">
                            <button class="btn btn-success">Send</buttom>
                        </div>
                        <div class="status"></div>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-3 text-center">
                      
                            <ul class="list-unstyled mb-0">
                            <li><i class="bi bi-geo-alt-fill" style="font-size: 2em;"></i>
                                <p>Mumbai, India</p>
                            </li>

                            <li><i class="bi bi-telephone-fill" style="font-size: 2em;"></i>
                                <p>+91 9876543210</p>
                            </li>

                            <li><i class="bi bi-envelope-open-fill" style="font-size: 2em;"></i></i>
                                <p>foodie@mitaoe.ac.in</p>
                            </li>
                        </ul>
                       
                    </div>
                    <!--Grid column-->

                </div>
           

            </section>
            <!--Section: Contact v.2-->
        </div>



<!--custom js file-->
<script src="js/script.js"></script>

<%@include file="components/common_modal.jsp" %>
</body>


</html>



<script>
  

    
    let menu=document.querySelector('#menu-bars');
let navbar=document.querySelector('.navbar');

window.onscroll=()=>{
menu.classList.remove('fa-time');
navbar.classList.remove('active');
}

document.querySelector('#search-icon').onclick=()=>{
    document.querySelector('#search-form').classList.toggle('active');
}
document.querySelector('#close').onclick=()=>{
    document.querySelector('#search-form').classList.remove('active');
}

var swiper = new Swiper(".home-slider", {
    spaceBetween: 30,
    centeredSlides: true,
    autoplay: {
      delay: 2000,
      disableOnInteraction: false,
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    loop:true,
  });
  
</script>