package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.JOptionPane;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import conn.MyConnection;

public final class Index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"fr\">\n");
      out.write("    <html>\n");
      out.write("        <head>\n");
      out.write("\n");
      out.write("            <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("            <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("           \n");
      out.write("            <!--CDN-->\n");
      out.write("            <link rel=\"stylesheet\" type=\"text/css\" href=\"Bootstrap/css/bootstrap.min.css\">\n");
      out.write("\t    <link rel=\"stylesheet\" type=\"text/css\" href=\"Bootstrap/css/style.css\">\n");
      out.write("            <!--conex -->\n");
      out.write("         <!--   <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\" integrity=\"sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk\" crossorigin=\"anonymous\">\n");
      out.write("            --><!-- styles css -->\n");
      out.write("          <!--end CDN-->\n");
      out.write("            <title>Accueil</title>\n");
      out.write("\n");
      out.write("            <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("            <script src=\"https://kit.fontawesome.com/a076d05399.js\"></script>\n");
      out.write("        </head>\n");
      out.write("        <body style=\"background-color: white\">\n");
      out.write("\n");
      out.write("            <!-- Nav bar -->\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-dark bg-info  sticky-top w-100\">\n");
      out.write("                <span class=\"navbar-brand text-light\" href=\"#\">DARNA<span class=\"text-dark\" >immo</span></span>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                        <li class=\"nav-item active pl-4\">\n");
      out.write("                            <a class=\"nav-link \" href=\"Index.jsp\"><i class=\"fa fa-home\"></i>&nbsp;Accueil <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item pl-4\">\n");
      out.write("                            <a class=\"nav-link  \" data-target=\"#staticBackdrop\" href=\"login.jsp\"  ><i class=\"fa fa-user-circle\"></i>&nbsp;Ouvrire mon espace</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item dropdown pl-4\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle \" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                Categorie\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"Index.jsp?typeCat=appartement\">Appartements</a>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"Index.jsp?typeCat=villa\">Villas</a>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"Index.jsp?typeCat=maison\"> Maisons</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"Index.jsp\">Tous</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item pl-4\">\n");
      out.write("                            <a class=\"nav-link \" href=\"Contact.jsp\" target=\"_blanck\"><i class=\"far fa-address-book \"></i>&nbsp;Contact</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item pl-4\">\n");
      out.write("                            <a class=\"btn bg-light my-2 my-sm-0 \" href=\"SignUp.jsp\" >S'inscrire</a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                    <form class=\"form-inline my-2 my-lg-0\" action=\"Index.jsp\" method=\"get\" >  \n");
      out.write("                        <input class=\"form-control mr-sm-2 \" type=\"search\" placeholder=\"Search\" aria-label=\"Search\" name=\"type\">\n");
      out.write("                        <button class=\"btn btn-outline-light my-2 my-sm-0\" type=\"submit\">Search</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <!-- end Nav bar -->\n");
      out.write("            <!-- start cont -->\n");
      out.write("            <div class=\"pt-1 \">\n");
      out.write("                <div class=\"row \" id=\"div_cont\">\n");
      out.write("                    <!-- div left-->\n");
      out.write("                    <div class=\"col-sm-3 mt-2 mx-auto  rounded  py-2 \">\n");
      out.write("                        <div class=\"w-100 mx-auto\">\n");
      out.write("                            <center> <h5 class=\"card-title\">Laisseez-nous vous aider </h5></center>\n");
      out.write("                            <form class=\"pt-1 \" action=\"Index.jsp\" method=\"get\">\n");
      out.write("                                <!--------------------------------------------->\n");
      out.write("\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <div class=\"input-group mb-3\">\n");
      out.write("                                        <div class=\"input-group-prepend \">\n");
      out.write("                                            <label class=\"input-group-text \" for=\"inputGroupSelect01\">Ville</label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <select class=\"custom-select\" id=\"inputGroupSelect01\" name=\"ville\">\n");
      out.write("                                             <option>Choose..</option>                               \n");
      out.write("                                            ");

                        
         Connection conn = MyConnection.getMyConnection();
         Statement stt = conn.createStatement();
         ResultSet rstt = stt.executeQuery("select VILLE_IM  from IMMOBILIERES group by VILLE_IM");
         while(rstt != null && rstt.next()){
          
      out.write("       \n");
      out.write("              \n");
      out.write("          <option>");
      out.print(rstt.getString(1));
      out.write("</option>\n");
      out.write("                  \n");
      out.write("                   ");
  }
                    
      out.write(" \n");
      out.write("                                        </select>\n");
      out.write("         \n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <!--------------------------------------------->       \n");
      out.write("\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <div class=\"input-group mb-3\">\n");
      out.write("                                        <div class=\"input-group-prepend\">\n");
      out.write("                                            <label class=\"input-group-text\" for=\"inputGroupSelect01\">type</label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <select class=\"custom-select\" id=\"inputGroupSelect01\" name=\"type\" >\n");
      out.write("                                            <option>Choose..</option>\n");
      out.write("                                           ");
 
                                           ResultSet rs = stt.executeQuery("select TYPE_IM from IMMOBILIERES group by TYPE_IM");
                                           while(rs.next()){
                                           
      out.write("         \n");
      out.write("                                              <option>");
      out.print(rs.getString(1));
      out.write("</option>\n");
      out.write("                  \n");
      out.write("                                                 ");
  }
                                                    
      out.write(" \n");
      out.write("                                        </select>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <!--------------------------------------------->\n");
      out.write("\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <div class=\"input-group mb-3\">\n");
      out.write("                                        <div class=\"input-group-prepend\">\n");
      out.write("                                        <label class=\"input-group-text\" for=\"inputGroupSelect01\">min prix</label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <input type=\"text\" class=\"form-control\"  name=\"minprix\" placeholder=\" MAD\">  \n");
      out.write("                                        </div>\n");
      out.write("                                </div>\n");
      out.write("                                <!--------------------------------------------->\n");
      out.write("\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <div class=\"input-group mb-3\">\n");
      out.write("                                        <div class=\"input-group-prepend\">\n");
      out.write("                                            <label class=\"input-group-text\" for=\"inputGroupSelect01\">max prix</label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" name=\"maxprix\" placeholder=\" MAD\">\n");
      out.write("                                     </div>\n");
      out.write("                                 </div>\n");
      out.write("                                <!--------------------------------------------->\n");
      out.write("                                <div class=\"w-50  mx-auto \">\n");
      out.write("                                    <button class=\"btn btn-outline-info w-100 my-2 my-sm-0\" type=\"submit\">Search</button>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </form>    \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- end div left -->\n");
      out.write("                    <!--div contenu -->\n");
      out.write("                    <div class=\" mt-2  rounded pt-4 col-lg-8 \" >\n");
      out.write("                        <div class=\"card text-center  mr-3\">\n");
      out.write("                            <div class=\"card-header\">\n");
      out.write("                                Creation d'un espace\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <h5 class=\"card-title\">Créer votre espace de vente maintenant </h5>\n");
      out.write("                                <p class=\"card-text\">Vous avez un bien immobilière et souhaitez le vendre , alors essayez de créer votre platforme sur notre site pour proposer à la vente.</p>\n");
      out.write("                                <a href=\"SignUp.jsp\"  class=\"btn btn-primary\">Créer</a>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--end div contenu-->\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!----------------------------------------------------------------------------------------------------------->\n");
      out.write("\n");
      out.write("            <div class=\"col-sm-11 mx-auto border border-info my-2\"></div>\n");
      out.write("\n");
      out.write("            <!----------------------------------------------------------------------------------------------------------->\n");
      out.write("        <center> <h4 class=\"text-muted\" >Propriétés recommandées au Maroc</h4></center>\n");
      out.write("                    <div class=\"col-sm-11 mx-auto border border-info my-2\"></div>\n");
      out.write("<!--- les immo -->\n");
      out.write("\n");
      out.write("        <!-- div Tous les annonces -->\n");
      out.write("        <div class=\" row col-lg-12 col-sm-12  mt-2  mx-auto rounded  \" >\n");
      out.write("            ");
 
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

            
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- end div Tous les annonces -->\n");
      out.write("\n");
      out.write("\n");
      out.write("       \n");
      out.write("\n");
      out.write("<!------------------->\n");
      out.write("            <!--CDN-->\n");
      out.write("<script type=\"text/javascript\" src=\"Bootstrap/js/jquery-3.5.1.min.js\"></script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"Bootstrap/js/popper.min.js\"></script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"Bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"Bootstrap/js/my.js\"></script>\n");
      out.write("        <!--BOOTSTTRAP JS conex -->\n");
      out.write("      <!-- \n");
      out.write("     \n");
      out.write("      <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js\" integrity=\"sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI\" crossorigin=\"anonymous\"></script>        \n");
      out.write("  --> \n");
      out.write("     <!-- end CDN-->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
