<%-- 
    Document   : Vendeur
    Created on : 27 mai 2020, 21:29:07
    Author     : ibrahim
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="conn.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--CDN-->
        <link rel="stylesheet" type="text/css" href="Bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="Bootstrap/css/style.css">
        <!--conex -->
        <!--   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        --><!-- styles css -->
        <!--end CDN-->
        <title>Mon espace</title>
        <meta charset="utf-8">
    </head>
    <body class="bg-light">
        <!------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <!-- Nav bar -->
        <!------------------------------------------------------------------------------------------------------------------------------------>


        <nav class=" navbar navbar-expand-lg navbar-dark bg-info mt-1 sticky-top">
            <%
                String id_ag = request.getParameter("id_ag");

                if (session.getAttribute("cin") == null) {
                    response.sendRedirect("login.jsp");
                    return;

                }
                if (id_ag != null && id_ag != "") {

                    Connection conn = MyConnection.getMyConnection();
                    Statement stt = conn.createStatement();
                    ResultSet rstt;
                    String sql = "select  ID_AGENT ,NOM_AG  from AGENTS where ID_AGENT ='" + id_ag + "'";
                    rstt = stt.executeQuery(sql);

            %>
            <a class="navbar-brand text-light" href="#">DARNA<span class="text-dark" >immo</span></a>
            <% while (rstt.next()) {

                    String id_age = rstt.getString(1);

            %>
            <h4 class="text-light">Hi
                <span class="text-warning"> <%= rstt.getString(2)%> </span></h4>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown pl-4">
                        <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Paramètres du compte
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <button class="dropdown-item" data-toggle="modal" data-target="#exampleModal6"> Mes paramètres</button>
                            <div class="dropdown-divider"></div>

                            <button class="dropdown-item" data-toggle="modal" data-target="#exampleModal1">Oublier ce compte</button>
                        </div>
                    </li>
                    <li class="nav-item dropdown pl-4">
                        <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Options
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="Vendeur.jsp?id_ag=<%=id_age%>">Mes immobilières</a>
                            <div class="dropdown-divider"></div>
                            <button type="button" class="dropdown-item" data-toggle="modal" data-target="#staticBackdrop">Ajouter un immobilière</button>
                        </div>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">  

                    &nbsp;&nbsp;<a class="btn bg-danger my-2 my-sm-0 text-light" href="LogOut" >Se déconnecter</a>
                </form>
            </div>
        </nav>

        <!-- end Nav bar -->
        <!------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <!-- Modal supprimer le compte -->
        <!------------------------------------------------------------------------------------------------------------------------------------>



        <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Supprimer le compte</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        Voulez-vous vraiement supprimer votre compte ?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <a class="btn btn-danger" href="http://localhost:8080/PROJET_FIN_ETUDE/DeleteAg_IM?id_agent=<%=id_age%> ">Supprimer</a>
                    </div>

                </div>
            </div>
        </div>
        <!-- end modal supprimer compte -->

        <!------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <!-- Modal parametre -->
        <!------------------------------------------------------------------------------------------------------------------------------------>
        <div class="modal fade" id="exampleModal6" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <form action="http://localhost:8080/PROJET_FIN_ETUDE/UpdateInfoAg?id_agent=<%=id_age%>" method="post">

                    <%
                        ResultSet rs = stt.executeQuery("select * from AGENTS where ID_AGENT = '" + id_age + "' ");
                        String nom = "";
                        String prenom = "";
                        String ville = "";
                        String tele = "";
                        String email = "";
                        String pwd = "";

                        while (rs.next()) {
                            nom = rs.getString(2);
                            prenom = rs.getString(3);
                            ville = rs.getString(4);
                            tele = rs.getString(6);
                            email = rs.getString(5);
                            pwd = rs.getString(7);
                        }
                    %>
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Mes paramètres</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">


                            <div class="accordion" id="accordionExample">
                                <!-------------------------------------------------------------------------------------------------->
                                <!--Parametre generale ---->
                                <!-------------------------------------------------------------------------------------------------->
                                <div class="card">
                                    <div class="card-header" id="headingOne">

                                        <b class="text-left collapsed user-select-none" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            Paramètres générale
                                        </b>

                                    </div>

                                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="form-row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="validationDefault01">Nom <span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" id="validationDefault01" value="<% out.print(nom); %>" name="nomag" required>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="validationDefault02">Prénom <span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" id="validationDefault02" value="<% out.print(prenom); %>" name="prenomag" required>
                                                </div>
                                            </div>

                                            <div class="form-row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="validationDefault02">Ville</label>
                                                    <input type="text" class="form-control" id="validationDefault02" value="<% out.print(ville); %>" name="villeag" required>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="validationDefault02">Téléphone <span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" id="validationDefault02" value="<% out.print(tele); %>" name="teleag" required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-------------------------------------------------------------------------------------------------->
                                <!--Authentification ---->
                                <!-------------------------------------------------------------------------------------------------->
                                <div class="card">
                                    <div class="card-header" id="headingTwo">

                                        <b class="text-left collapsed user-select-none" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            Authentification
                                        </b>

                                    </div>
                                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                        <div class="card-body">

                                            <div class="form-row">
                                                <div class=" form-group col-md-6 ">
                                                    <label for="inputEmail4">Email <span class="text-danger">*</span></label>
                                                    <input type="email" class="form-control" id="inputEmail4" value="<% out.print(email); %>" name="emailag" required>
                                                </div>
                                                <div class="form-group col-md-6">
                                                    <label for="inputPassword4">Mot de passe <span class="text-danger">*</span></label>
                                                    <input  type="text" class="form-control" id="inputPassword4" value="<% out.print(pwd);%>" name="passwordag" required>
                                                </div>

                                                <div class="ml-1">
                                                    <span id='message1' style="display: none;color: green"><b> Mote de passe correcte </b></span>
                                                    <span id='message2' style="display: none;color: red"><b> Mote de passe incorrecte </b></span> 
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!-------------------------------------------------------------------------------------------------->
                                <!--End Authentification ---->
                                <!-------------------------------------------------------------------------------------------------->
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!------------------------------------------------------------------------------------------------------------------------------------>
        <!--- ADD immobiliere ---->
        <!------------------------------------------------------------------------------------------------------------------------------------>


        <!-- Modal -->
        <div class="modal fade col-lg-12 " id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Ajouter immobilière</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <!-- Form add immobilier --->
                    <div class="modal-body">

                        <form id="form1" action="http://localhost:8080/PROJET_FIN_ETUDE/Add_IMO?id_ag=<%=id_age%> " method="post" enctype="multipart/form-data">

                            <% }%>
                            <div class="w-100 ml-2">
                                <center> 
                                    <div class="">
                                        <div id="divimg1" class="" >
                                            <img src="images/IMG.png" id="img1" style="height: 300px;width: 500px "><br>
                                        </div>
                                            <input type="file" name="img1" onchange="preview1(event)" class="w-50 form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                                    </div>
                                </center>      
                            </div>
                                                              <div class="bg-dark border"></div>



                            <div class="form-row mt-2">
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault01">Type<span class="text-danger">*</span></label>
                                    <input type="text" name="type_imo" class="form-control" id="validationDefault02" value="" required>

                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault02">Ville <span class="text-danger">*</span></label>
                                    <input type="text" name="ville_imo" class="form-control" id="validationDefault02" value="" required>
                                </div>
                            </div>
                            <div class="form-row ">
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault01">N° immobilière<span class="text-danger">*</span></label>
                                    <input type="text"  name="id_imo" class="form-control" id="validationDefault01" value="" required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault02">Prix<span class="text-danger">*</span></label>
                                    <input type="text" name="prix_imo" class="form-control" id="validationDefault02" value="" placeholder="en MAD" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault01">Adresse<span class="text-danger">*</span></label>
                                    <input type="text"  name="adresse_imo" class="form-control" id="validationDefault01" value="" required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault02">N° Chambres<span class="text-danger">*</span></label>
                                    <input type="text" name="chambre_imo" class="form-control" id="validationDefault02" value="" required>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Salons <span class="text-danger">*</span></label>
                                    <input type="text" name="salons_imo" class="form-control" id="validationDefault02" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="validationDefault02">Etage<span class="text-danger">*</span></label>
                                    <select class="form-control" name="etage_imo">
                                        <option>0</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7+</option>
                                    </select> 
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Surface Total <span class="text-danger">*</span></label>
                                    <input type="text" name="surface_imo" class="form-control" id="validationDefault02" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Description<span class="text-danger">*</span></label>
                                    <textarea  name="description_imo" class="form-control" id="validationDefault02" value="" required> </textarea>
                                </div>
                            </div> 
                            <div class="border border-muted"></div>
                            <div class="w-100 mt-2">
                                <center> <div class="w-50">
                                        <button class="btn btn-success w-100" type="submit">Ajouter</button>
                                    </div></center>
                            </div>

                        </form>

                        <script type="text/javascript">
                            function preview1(event) {

                                var input = event.target.files[0];
                                var reader = new FileReader();
                                reader.onload = function () {

                                    var result = reader.result;
                                    var img = document.getElementById('img1');
                                    img.src = result;
                                }
                                reader.readAsDataURL(input);
                            }
                            function preview2(event) {

                                var input = event.target.files[0];
                                var reader = new FileReader();
                                reader.onload = function () {

                                    var result = reader.result;
                                    var img = document.getElementById('img2');
                                    img.src = result;
                                }
                                reader.readAsDataURL(input);
                            }
                        </script>

                    </div>
                    <!-- end Form add immobilier --->

                </div>
            </div>
        </div>
        <!------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <!-- div Tous les annonces -->
        <!------------------------------------------------------------------------------------------------------------------------------------>

    <center><h3 class="text-muted " >Mes annonces</h3></center>

    <div class=" row col-lg-12 col-sm-12  mt-2  mx-auto rounded  " >
        <%

                Connection con = MyConnection.getMyConnection();
                Statement st = con.createStatement();
                ResultSet rst;
                String req = " select *  from IMMOBILIERES where ID_AGENT = '" + id_ag + "'";
                rst = st.executeQuery(req);
                String cod = "";

                while (rst.next()) {

                    cod += "<div class='mt-2  col-sm-12 col-lg-6'>"
                            + "<div class='row'> "
                            + "<div class=''>"
                            + "<div class='card-deck'>"
                            + "<div class='card mb-3 w-100 mt-2'>"
                            + "<div class='row no-gutters'>"
                            + "<div class='col-md-5 '>"
                            + "<img src='http://localhost:8080/PROJET_FIN_ETUDE/displayphoto?id_im=" + rst.getString(4) + "' class='card-img  h-100 py-1 px-1' alt='...'>"
                            + "</div>"
                            + "<div class='col-md-7 py-1 bg-light px-1 '>"
                            + "<div class='card-body border border-muted'>"
                            + "<div class=''>"
                            + "<h5 class='card-title text-primary'>" + rst.getString(11) + "</h5>"
                            + "<h5 class='card-title text-danger'><span class='text-success'>" + rst.getString(5) + "</span> MAD</h5>"
                            + "<p class='card-text'>"
                            + "Chambres :<span class='text-success'> " + rst.getString(7) + "</span><br>"
                            + "Salons : <span class='text-success'>" + rst.getString(8) + "</span><br>"
                            + "Etage : <span class='text-success'>" + rst.getString(9) + "</span> <br>"
                            + "Ville : <span class='text-success'>" + rst.getString(3) + "</span><br>"
                            + " Adresse: <span class='text-success'>" + rst.getString(6) + "</span> "
                            + "</p>"
                            + "<div class='row float-right'>"
                            + "<div class='card-text'>"
                            + "<a  href='http://localhost:8080/PROJET_FIN_ETUDE/DeleteAg_IM?n_im=" + rst.getString(4) + "&id_ag=" + rst.getString(12) + "' class='btn bg-danger my-2 my-sm-0 text-light'>supprimer</a>"
                            + "</div>"
                            + "</div>"
                            + "</div></div></div></div></div></div></div></div></div>";
                }

                out.print(cod);

                if (cod.equals("")) {
                    String msg = "";
                    msg += "<div class=' col-lg-12 col-sm-12 mt-3'>"
                            + "<center><div>"
                            + "<h4>Actuellement , Il n'y pas de publicité sur votre page</h4>"
                            + " <button type='button' class=' text-primary' data-toggle='modal' data-target='#staticBackdrop'>cliquez ici pour ajouter une annonce </button>"
                            + "</div></center>"
                            + "</div>";
                    out.print(msg);
                }

            } else {
                response.sendRedirect(request.getContextPath() + "/login.jsp");
            }
        %>
    </div>
    <!------------------------------------------------------------------------------------------------------------------------------------------------------------>
    <!------------------------------------------------------------------------------------------------------------------------------------>


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
