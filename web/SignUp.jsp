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
        <title>Sign up</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script></head>
    <body class="bg-light">
        <nav class="navbar navbar-light bg-info">
            <span class="navbar-brand mb-0 h1 text-light">Inscription</span>
        </nav>
        <div class="container mt-5">
            <div class="row  border border-light  ">
                <div class="col-lg-6 col-sm-12  rounded mr-0 my-0">

                    <img src="images/inscrip.jpg" alt="..." class="rounded-circle w-100">

                </div>
                <div class="col-lg-6 col-sm-12  ">
<center> <h2 class="text-dark">Sign up</h2> </center>
                    <form class="text-muted mt-3" action="http://localhost:8080/PROJET_FIN_ETUDE/Add_AG_IM" method="get">
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="validationDefault01">Nom <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="validationDefault01" value="" name="nomag" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="validationDefault02">Prénom <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="validationDefault02" value="" name="prenomag" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="validationDefault01">CIN <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="validationDefault01" value="" name="cinag" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="validationDefault02">Ville</label>
                                <input type="text" class="form-control" id="validationDefault02" value="" name="villeag" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Email <span class="text-danger">*</span></label>
                                <input type="email" class="form-control" id="inputEmail4" name="emailag" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="validationDefault02">Téléphone <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="validationDefault02" name="teleag" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Mot de passe <span class="text-danger">*</span></label>
                                <input onkeyup='check(); ' type="password" class="form-control" id="inputPassword4" name="passwordag" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Confirmer <span class="text-danger">*</span></label>  
                                <input onkeyup='check(); ' type="password" class="form-control" id="inputPassword3" name="passwordag2" required>
                            </div>
                            <div class="ml-1">
                                <span id='message1' style="display: none;color: green"><b> Mote de passe correcte </b></span>
                                <span id='message2' style="display: none;color: red"><b> Mote de passe incorrecte </b></span> 
                        </div> 
                        <div class="w-100 mt-3 ml-1">
                            <div class="float-left">
                                <button class="btn btn-success" name="action" type="submit"value="Inscription">Inscription</button>
                            </div>
                            <div class="float-left ml-1">
                                <a class="btn btn-danger" href="Index.jsp">Annuler</a>
                            </div>
                        </div>
                      </div> 
                     </form>
            </div>
        </div>



            <script>
var check = function() {
 if (document.getElementById('inputPassword4').value ==
    document.getElementById('inputPassword3').value){
document.getElementById('message2').style.display = 'none';
    document.getElementById('message1').style.display = 'block';
    
  }
  else {
     document.getElementById('message2').style.display = 'block';
     document.getElementById('message1').style.display = 'none';
  }
}

            </script>


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

