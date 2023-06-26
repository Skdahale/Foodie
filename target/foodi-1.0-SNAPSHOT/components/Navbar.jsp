<nav class="navbar navbar-expand-lg navbar-light custom-bg">
    <div class="container">
        <a class="navbar-brand" href="Home_page.jsp">Foodie</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Home_page.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
     
    </ul>
    
      <ul>
<!--          class="btn btn-primary">Primary
           < class="nav-item active   ">-->
       <a class="nav-link" href="logout">Logout </a>
       
       <a class="nav-link" href="logout"><%=session.getAttribute("user_name") %></a>
      
       
        
      
      </ul>
  </div>
    </div>
</nav>  