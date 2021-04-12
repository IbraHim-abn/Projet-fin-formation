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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author ibrahim
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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
        response.setContentType("text/html");

        try {
            String id_ag = "";

            String email = request.getParameter("email_ag");
            String password = request.getParameter("passw_ag");
            String check = request.getParameter("remember");
            Connection conn = MyConnection.getMyConnection();
            Statement stt = conn.createStatement();
            ResultSet rstt = stt.executeQuery("select ID_AGENT , EMAIL_AG , PASSWORD from AGENTS where EMAIL_AG ='" + email + "' and PASSWORD ='" + password + "'");

            if (rstt.next() && rstt.getString(2).equals(email) && rstt.getString(3).equals(password)) {
                id_ag = rstt.getString(1);
                HttpSession session = request.getSession();
                session.setAttribute("cin", rstt.getString(1));
                try {
                    if (check.equals("on")) {
                        Cookie c = new Cookie("code", rstt.getString(1));
                        c.setMaxAge(4000);
                        response.addCookie(c);
                    }
                } catch (Exception ex) {

                }
                response.sendRedirect(request.getContextPath() + "/Vendeur.jsp?id_ag=" + id_ag);

                /**
                 * get code agents *
                 */
            } else {
                request.setAttribute("errorType", "Login/passwod sont incorrectes");
                request.getRequestDispatcher("login.jsp").include(request, response);
                out.print("<script> document.getElementById('msg').innerHTML = 'password or email is incorrect'; </script>");
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null,ex.toString());
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
