<!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<style>
    body
{
    margin: 0;
    padding: 0;
   background: url('images/sign_bg_image.jpg') no-repeat center fixed ;
   background-size: cover;
    font-family: 'Arial';
}
.login{
        width: 350px;
        overflow: hidden;
        margin: auto;
        margin: 20 0 0 450px;
        padding: 80px;
        background: #272346;
        border-radius: 15px ;


}
h2{
    text-align: center;
    color: #277582;
    padding: 20px;
}
label{
    color: #08ffd1;
    font-size: 17px;
}
h1{
    text-color:white bolder;
    text: size 90px;
}
#Uname{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;
}
#Pass{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;

}
#User_type{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;

}
.log{
   /* width: 300px;
    height: 30px;
    border: none;
    border-radius: 17px;
    padding-left: 7px;
    color: rgb(212, 0, 255);*/
  background-color: #c91ef4;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px bold;
  margin: 4px 2px;
  border-radius: 3px;
  opacity: 1;
  transition: 0.3s;
}
.log:hover {opacity: 0.6}


span{
    color: white;
    font-size: 17px;
}
a{
    float: right;
    background-color: grey;
}
#lText{
    color: white;
    text-align: center;
}
</style>
<body>
    
    <div class="login">
    <form id="login" method="post" action="loginServlet">
        <h1 id="lText">Login </h1>
        <br>
        <br>
        <label><b>User Name
        </b>
        </label>
        <input type="text" name="Uname" id="Uname" placeholder="Username">
        <br><br>
        <label><b>Password
        </b>
        </label>
        <input type="Password" name="Pass" id="Pass" placeholder="Password">
<!--         <br><br>
        <label><b>User Type
        </b>
        </label>
        <input type="text" name="user_type" id="User_type" placeholder="User Type">-->
        
        <center><a href="index.jsp" class="d-block mb-2" ><p style="text-align:center">If not Register Click here</a></p></center>
      
        
        <br><br>
         
        <center><button class="log">login</button></center>
        
        <br><br>
        <input type="checkbox" id="check">
        <span>Remember me</span>
        <br><br>
        <a href="#">Forgot Password</a>
    </form>
</div>
</body>
</html>