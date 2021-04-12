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
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

/**
 *
 * @author ibrahim
 */
@WebServlet(name = "Add_IMO", urlPatterns = {"/Add_IMO"})
@MultipartConfig
public class Add_IMO extends HttpServlet {

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

        PrintWriter out = response.getWriter();
        try {
            /*img1*/
            Part photo1 = request.getPart("img1");

            /*type*/
            String type_imo = request.getParameter("type_imo");
            /*ville*/
            String ville_imo = request.getParameter("ville_imo");
            /*Id immo*/
            String id_imo = request.getParameter("id_imo");
            /* prix */
            String prix_imo = request.getParameter("prix_imo");
            /* adresse */
            String adresse_imo = request.getParameter("adresse_imo");
            /*chambre*/
            String chambre_imo = request.getParameter("chambre_imo");
            /*Salon*/
            String salons_imo = request.getParameter("salons_imo");
            /*etage*/
            String etage_imo = request.getParameter("etage_imo");
            /*surface*/
            String surface_imo = request.getParameter("surface_imo");
            /*description*/
            String description_imo = request.getParameter("description_imo");
            /* id agent */
            String id_ag = request.getParameter("id_ag");

// Connect to Oracle
            Connection con = MyConnection.getMyConnection();
            con.setAutoCommit(true);
            PreparedStatement ps = con.prepareStatement("insert into IMMOBILIERES values(?,?,?,seq_immo.nextval,?,?,?,?,?,?,?,?)");

            // size must be converted to int otherwise it results in error
            ps.setBinaryStream(1, photo1.getInputStream(), (int) photo1.getSize());
            ps.setString(2, type_imo.toLowerCase());
            ps.setString(3, ville_imo.toLowerCase());
           // ps.setString(4, id_imo);
            ps.setString(4, prix_imo);
            ps.setString(5, adresse_imo);
            ps.setString(6, chambre_imo);
            ps.setString(7, salons_imo);
            ps.setString(8, etage_imo);
            ps.setString(9, surface_imo);
            ps.setString(10, description_imo);
            ps.setString(11, id_ag);
            try {
                ps.executeUpdate();
            } catch (SQLException X) {
                JOptionPane.showMessageDialog(null, "" + X);
            }
            response.sendRedirect(request.getContextPath() + "/Vendeur.jsp?id_ag=" + id_ag);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            out.close();
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
