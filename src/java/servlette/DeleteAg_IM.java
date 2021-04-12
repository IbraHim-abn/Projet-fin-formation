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
@WebServlet(name = "DeleteAg_IM", urlPatterns = {"/DeleteAg_IM"})
public class DeleteAg_IM extends HttpServlet {

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
        // GET PARAMETER
        String idagent = request.getParameter("id_agent");
        String n_im = request.getParameter("n_im");
        String id_ag = request.getParameter("id_ag");
        // CHECK ID AN N_IMAGE .... DELETE IMMOBILIER
        if (n_im != null && id_ag != null) {
            try {
                response.sendRedirect(request.getContextPath() + "/Vendeur.jsp?id_ag=" + id_ag);

                Connection con = MyConnection.getMyConnection();
                Statement st = con.createStatement();
                String sql1 = "delete  from IMMOBILIERES where N_IM ='" + n_im + "' and ID_AGENT ='" + id_ag + "' ";
                int var = JOptionPane.showConfirmDialog(null, "voulez-vous vraiement supprimer cette annonce ?", "Suppression", 0);

                if (var == 0) {
                    int rs = st.executeUpdate(sql1);
                }

            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, ex.toString());
                response.sendRedirect(request.getContextPath() + "/Vendeur.jsp?id_ag=" + id_ag);
            }

        }
        /**
         * ** DELETE AGENT ****
         */
        // CHECK ID_AGENT .... DELETE AGENTS
        if (idagent != null) {

            try {
                response.sendRedirect(request.getContextPath() + "/login.jsp");
                Connection con = MyConnection.getMyConnection();
                Statement st = con.createStatement();
                try {
                    String sql1 = "delete  from IMMOBILIERES where  ID_AGENT ='" + idagent + "' ";
                    int rs = st.executeUpdate(sql1);
                    String sql2 = "delete  from AGENTS where  ID_AGENT ='" + idagent + "' ";
                    int rs2 = st.executeUpdate(sql2);
                } catch (Exception ex) {
                    JOptionPane.showMessageDialog(null, "non supPrimée" + ex.toString());
                }

            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, ex.toString());

            }
        }

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
