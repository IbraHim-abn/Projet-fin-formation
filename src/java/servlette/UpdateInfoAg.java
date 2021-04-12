/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlette;

import conn.MyConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author ibrahim
 */
@WebServlet(name = "UpdateInfoAg", urlPatterns = {"/UpdateInfoAg"})
public class UpdateInfoAg extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  
       


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
         response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         try {
              String code = request.getParameter("id_agent");
            Connection con = MyConnection.getMyConnection();
            Statement st = con.createStatement();
                String nomag = request.getParameter("nomag");
                String prenomag = request.getParameter("prenomag"); 
                String villeag = request.getParameter("villeag");
                String emailag = request.getParameter("emailag");
                String teleag = request.getParameter("teleag");
                String passwordag = request.getParameter("passwordag");

                String req = "update AGENTS set NOM_AG ='"+nomag+"', PRENOM_AG ='"+prenomag+"', VILLE_AG ='"+villeag+"', EMAIL_AG ='"+emailag+"' , TELE_AG ='"+teleag+"' ,PASSWORD ='"+passwordag+"' where (ID_AGENT ='"+code+"')  ";
                int rst = st.executeUpdate(req);
                response.sendRedirect(request.getContextPath() + "/Vendeur.jsp?id_ag=" + code);
         
        } catch (SQLException ex) {
            Logger.getLogger(Add_AG_IM.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
