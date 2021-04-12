package servlette;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

@WebServlet(name = "DisplayPhotoServlet", urlPatterns = {"/displayphoto"})
public class DisplayPhotoServlet extends HttpServlet {

    @Override 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "PFE", "Nxiv8338");
            PreparedStatement ps = con.prepareStatement("select IMG1 from IMMOBILIERES where N_IM = ?");
            String id_im = request.getParameter("id_im");
            ps.setString(1,id_im );
            ResultSet rs = ps.executeQuery();
            rs.next();
            Blob b = rs.getBlob(1);
            response.setContentLength((int) b.length());
            InputStream is = b.getBinaryStream();
            OutputStream os = response.getOutputStream();
            byte buf[] = new byte[(int) b.length()];
            is.read(buf);
            os.write(buf);
            os.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     }
}
