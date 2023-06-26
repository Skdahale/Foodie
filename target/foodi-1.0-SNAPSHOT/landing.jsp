<!DOCTYPE html>
<html>
<head>
  <title>Food Delivery Service</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background: url('https://images.pexels.com/photos/1660030/pexels-photo-1660030.jpeg?cs=srgb&dl=pexels-elle-hughes-1660030.jpg&fm=jpg') no-repeat center fixed ;
    }

    .background-image {
      
      background-size: cover;
      background-position: center;
      height: 100vh;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
    }

    .overlay {
      background-color: rgba(0, 0, 0, 0.5);
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: -1;
    }

    h1 {
      color: #fff;
      font-size: 48px;
      margin-bottom: 20px;
    }

    p {
      color: #fff;
      font-size: 20px;
      margin-bottom: 40px;
    }

    .button {
      display: inline-block;
      padding: 12px 24px;
      margin: 13px;
      background-color: #FF6F00;
      color: white;
      text-decoration: none;
      border-radius: 5px;
      font-size: 18px;
      transition: background-color 0.3s ease;
    }

    .button:hover {
      background-color: #FF8F00;
    }
  </style>
</head>
<body>
  <div class="background-image">
    <div class="overlay"></div>
    <h1>Delicious Food Delivered to Your Doorstep</h1>
    <p>Discover a wide variety of cuisines and order your favorite meals online</p>
    <a href="login.jsp" class="button">Login</a>
    <a href="index.jsp" class="button">Register</a>
  </div>
</body>
</html>