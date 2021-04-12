<%-- 
    Document   : Index
    Created on : 18 mai 2020, 01:58:31
    Author     : ibrahim
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conn.MyConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
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
            <title>Accueil</title>

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        </head>
        <body style="background-color: white">

            <!-- Nav bar -->
            <nav class="navbar navbar-expand-lg navbar-dark bg-info  sticky-top w-100">
                <span class="navbar-brand text-light" href="#">DARNA<span class="text-dark" >immo</span></span>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active pl-4">
                            <a class="nav-link " href="Index.jsp"><i class="fa fa-home"></i>&nbsp;Accueil <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item pl-4">
                            <a class="nav-link  " data-target="#staticBackdrop" href="login.jsp"  ><i class="fa fa-user-circle"></i>&nbsp;Ouvrire mon espace</a>
                        </li>
                        <li class="nav-item dropdown pl-4">
                            <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Categorie
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="Index.jsp?typeCat=appartement">Appartements</a>
                                <a class="dropdown-item" href="Index.jsp?typeCat=villa">Villas</a>
                                <a class="dropdown-item" href="Index.jsp?typeCat=maison"> Maisons</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="Index.jsp">Tous</a>
                            </div>
                        </li>
                        <li class="nav-item pl-4">
                            <a class="nav-link " href="Contact.jsp" target="_blanck"><i class="far fa-address-book "></i>&nbsp;Contact</a>
                        </li>
                        <li class="nav-item pl-4">
                            <a class="btn bg-light my-2 my-sm-0 " href="SignUp.jsp" >S'inscrire</a>
                        </li>

                    </ul>
                    <form class="form-inline my-2 my-lg-0" action="Index.jsp" method="get" >  
                        <input class="form-control mr-sm-2 " type="search" placeholder="Search" aria-label="Search" name="type">
                        <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </div>
            </nav>
            <!-- end Nav bar -->
            <!-- start cont -->
            <div class="pt-1 ">
                <div class="row " id="div_cont">
                    <!-- div left-->
                    <div class="col-sm-3 mt-2 mx-auto  rounded  py-2 ">
                        <div class="w-100 mx-auto">
                            <center> <h5 class="card-title">Laisseez-nous vous aider </h5></center>
                            <form class="pt-1 " action="Index.jsp" method="get">
                                <!--------------------------------------------->

                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend ">
                                            <label class="input-group-text " for="inputGroupSelect01">Ville</label>
                                        </div>
                                        <select class="custom-select" id="inputGroupSelect01" name="ville">
                                             <option>Choose..</option>                               
                                            <%
                        
         Connection conn = MyConnection.getMyConnection();
         Statement stt = conn.createStatement();
         ResultSet rstt = stt.executeQuery("select VILLE_IM  from IMMOBILIERES group by VILLE_IM");
         while(rstt != null && rstt.next()){
          %>       
              
          <option><%=rstt.getString(1)%></option>
                  
                   <%  }
                    %> 
                                        </select>
         
                                    </div>
                                </div>
                                <!--------------------------------------------->       

                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <label class="input-group-text" for="inputGroupSelect01">type</label>
                                        </div>
                                        <select class="custom-select" id="inputGroupSelect01" name="type" >
                                            <option>Choose..</option>
                                           <% 
                                           ResultSet rs = stt.executeQuery("select TYPE_IM from IMMOBILIERES group by TYPE_IM");
                                           while(rs.next()){
                                           %>         
                                              <option><%=rs.getString(1)%></option>
                  
                                                 <%  }
                                                    %> 
                                        </select>
                                    </div>
                                </div>

                                <!--------------------------------------------->

                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                        <label class="input-group-text" for="inputGroupSelect01">min prix</label>
                                        </div>
                                        <input type="text" class="form-control"  name="minprix" placeholder=" MAD">  
                                        </div>
                                </div>
                                <!--------------------------------------------->

                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <label class="input-group-text" for="inputGroupSelect01">max prix</label>
                                        </div>
                                        <input type="text" class="form-control" name="maxprix" placeholder=" MAD">
                                     </div>
                                 </div>
                                <!--------------------------------------------->
                                <div class="w-50  mx-auto ">
                                    <button class="btn btn-outline-info w-100 my-2 my-sm-0" type="submit">Search</button>
                                </div>


                            </form>    
                        </div>
                    </div>
                    <!-- end div left -->
                    <!--div contenu -->
                    <div class=" mt-2  rounded pt-4 col-lg-8 " >
                        <div class="card text-center  mr-3">
                            <div class="card-header">
                                Creation d'un espace
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Créer votre espace de vente maintenant </h5>
                                <p class="card-text">Vous avez un bien immobilière et souhaitez le vendre , alors essayez de créer votre platforme sur notre site pour proposer à la vente.</p>
                                <a href="SignUp.jsp"  class="btn btn-primary">Créer</a>
                            </div>

                        </div>
                    </div>
                    <!--end div contenu-->
                </div>
            </div>
            <!----------------------------------------------------------------------------------------------------------->

            <div class="col-sm-11 mx-auto border border-info my-2"></div>

            <!----------------------------------------------------------------------------------------------------------->
        <center> <h4 class="text-muted" >Propriétés recommandées au Maroc</h4></center>
                    <div class="col-sm-11 mx-auto border border-info my-2"></div>
<!--- les immo -->

        <!-- div Tous les annonces -->
        <div class=" row col-lg-12 col-sm-12  mt-2  mx-auto rounded  " >
            <% 
                String typeCat =request.getParameter("typeCat");
                
                String cod = "";
                Connection con = MyConnection.getMyConnection();
                Statement st = con.createStatement();
                String ville = request.getParameter("ville");
                String type = request.getParameter("type");
                String minprix = request.getParameter("minprix");
                String maxprix = request.getParameter("maxprix");
              
PreparedStatement ps = con.prepareStatement("select  NOM_AG ,immobilieres.* ,PRENOM_AG from IMMOBILIERES  inner join AGENTS on (AGENTS.ID_AGENT=IMMOBILIERES.ID_AGENT) where ( TYPE_IM  = ? or VILLE_IM = ? or PRIX_IM between ? and ?  ) or ( 1 = ?)");
if((ville!=null) && (type !=null) && (minprix !=null) && (maxprix != null)){
   ps.setString(1,type);
   ps.setString(2,ville);
   ps.setString(3,minprix);
   ps.setString(4,maxprix);
   ps.setString(5,"2");
}else if (typeCat!=null){
    ps.setString(1,typeCat);
   ps.setString(2,"null");
   ps.setString(3,"null");
   ps.setString(4,"null");
   ps.setString(5,"2");
}else{
ps.setString(1,"null");
ps.setString(2,"null");
ps.setString(3,"null");
ps.setString(4,"null");
ps.setString(5,"1");
}

         ResultSet rst = ps.executeQuery();
                while (rst.next()) {

                    cod += "<div class='mt-2  col-sm-12 col-lg-6'>"
                            + "<div class='row'> "
                            + "<div class=''>"
                            + "<div class='card-deck'>"
                            + "<div class='card mb-3 w-100 mt-2'>"
                            + "<div class='row no-gutters'>"
                            + "<div class='col-md-5 '>"
                            + "<img src='http://localhost:8080/PROJET_FIN_ETUDE/displayphoto?id_im="+rst.getString(5)+"' class='card-img  h-100 py-1 px-1' alt='...'>"
                            + "</div>"
                            + "<div class='col-md-7 py-1 bg-light px-1 '>"
                            + "<div class='card-body border border-muted'>"
                            + "<div class=''>"
                            + "<h5 class='card-title text-primary'>" + rst.getString(12) + "</h5>"
                            + "<h5 class='card-title text-danger'><span class='text-success'>" + rst.getString(6) + "</span> MAD</h5>"
                            + "<p class='card-text'>"
                            + "Chambres :<span class='text-success'> " + rst.getString(8) + "</span><br>"
                            + "Salons : <span class='text-success'>" + rst.getString(9) + "</span><br>"
                            + "Etage : <span class='text-success'>" + rst.getString(10) + "</span><br>"
                            + "Ville : <span class='text-success'>" + rst.getString(4) + "</span><br>"
                            + " Adresse: <span class='text-success'>" + rst.getString(7) + "</span><br> "
                            +" <h6 class='text-muted'>publiée par : "+rst.getString(1)+"_"+rst.getString(14)+"    </h6>"
                            + "</p>"
                            + "<div class='row float-right'>"
                            + "<div class='card-text'>"
                            + "<a class='btn bg-primary my-2 my-sm-0 text-light'  href='ContacterAgent.jsp?id_ag="+rst.getString(13)+"' >Contacter</a>"
                            + "</div>"
                            + "</div>"
                            + "</div></div></div></div></div></div></div></div></div>";
                }
                out.print(cod);
if (cod.equals("")) {
                String msg = "";
                msg += "<div class=' col-lg-12 col-sm-12'>"
                        + "<center>"
                        + "<div><h4>Aucune annonce</h4>"
                        + "</div>"
                        + "</center>"
                        + "</div>";
                out.print(msg);
            }

            %>
        </div>
        <!-- end div Tous les annonces -->


       

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
