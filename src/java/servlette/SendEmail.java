/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
;
package servlette;

import javax.mail.Session;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.PasswordAuthentication;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
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
@WebServlet(name = "SendEmail", urlPatterns = {"/SendEmail"})
public class SendEmail extends HttpServlet {

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
    String name,last_name,email,phone,msg;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
          PrintWriter out = response.getWriter();
          //Get parameters
          name = request.getParameter("name");
              last_name = request.getParameter("last_name");
                  email = request.getParameter("email");
                       phone = request.getParameter("phone"); 
                          msg = request.getParameter("message"); 
          /***/
         String username="mycount125@gmail.com";
         String password="Nxiv8338";
          
          /****/
          Properties properties = new Properties();
          properties.put("mail.smtp.auth","true");
          properties.put("mail.smtp.starttls.enable","true");
          properties.put("mail.smtp.host","smtp.gmail.com");
          properties.put("mail.smtp.port","587");
                  // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
            public javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new javax.mail.PasswordAuthentication(username,password);
            }
        }; 
        Session session = Session.getInstance(properties, auth);
    try{
        Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(name));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(username));
            message.setSubject("DARNAimmo");
           message.setText(" from : "+email+"\n Telephone : "+phone+"\n Name : "+name+" "+last_name+"\n Meesage : \n"+msg);
        Transport.send(message);
       
        
    request.getRequestDispatcher("Contact.jsp").include(request, response);
    out.print("<script> document.getElementById('msg').innerHTML = 'Thank you "+name+", your message has been submitted to us'; </script>");
    }catch(Exception ex){
       JOptionPane.showMessageDialog(null, ex.toString());
      //   System.out.println(""+ex);
    request.getRequestDispatcher("Contact.jsp").include(request, response);
    out.print("<script> document.getElementById('msg').innerHTML = 'message non envoyé'; </script>");
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
