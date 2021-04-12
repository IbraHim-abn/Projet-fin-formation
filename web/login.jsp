<%-- 
    Document   : Inscription
    Created on : 22 mai 2020, 15:46:46
    Author     : ibrahim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--CDN-->
            <link rel="stylesheet" type="text/css" href="Bootstrap/css/bootstrap.min.css">
	    <link rel="stylesheet" type="text/css" href="Bootstrap/css/style.css">
            <!--conex -->
         <!--   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
            --><!-- styles css -->
          <!--end CDN-->    
        <title>Connexion</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script></head>
    <body class="bg-light ">

        
        <nav class="navbar navbar-expand-lg navbar-dark bg-info  sticky-top">
 <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active pl-4">
        <span class="nav-link " >Connexion</span>
      </li>
      <li class="nav-item pl-4">
 <a class="nav-link " href="Index.jsp"><i class="fa fa-home"></i>&nbsp;Accueil<span class="sr-only">(current)</span></a>        
      </li>

    </ul>
  </div>
</nav>
    
        <div class="container">
        <div class="container mt-5">
 <div class="row  border border-light  ">
<div class="col-lg-6 col-sm-12  rounded mr-0 my-0">
    
    <img src="images/inscrip.jpg" alt="..." class="rounded-circle w-100">
   
</div>
    <div class="col-lg-5 col-sm-12  mt-2 ml-2">
        <center> <h2 class="text-dark">Sign in</h2> </center>
<form class="   " action="http://localhost:8080/PROJET_FIN_ETUDE/LoginServlet" method="post">
  
    <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
     <input type="email" class="form-control" id="inputEmail4" required name="email_ag">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="passw_ag" >
  </div>
    <p class="text-danger" id="msg"></p> 
  <div class="form-group form-check mt-1">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember">
    <label class="form-check-label" for="exampleCheck1">Remember me</label>
  </div>
          <div class=" w-100">
              <button type="submit" class="btn btn-success w-100" onclick="affich()">Sign in</button>
          </div>
          <div class="w-100 mt-2">
              <a href="SignUp.jsp"  class="btn btn-primary my-2  w-100 ">Sign up</a>
          
           
          </div>
   
      </form>

    </div>
  </div>
</div>
        </div>
        
        
        
        

        
<!------------------->
            <!--CDN-->
<script type="text/javascript" src="Bootstrap/js/jquery-3.5.1.min.js"></script>

<script type="text/javascript" src="Bootstrap/js/popper.min.js"></script>

<script type="text/javascript" src="Bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="Bootstrap/js/my.js"></script>
        <!--BOOTSTTRAP JS conex -->
      <!-- 
     
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>        
  --> 
     <!-- end CDN-->
    </body>
</html>
