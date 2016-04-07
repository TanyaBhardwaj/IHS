/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.validator.constraints.Email;

/**
 *
 * @author Tanya
 */
@WebServlet(name = "RegWorkplace", urlPatterns = {"/RegWorkplace"})
public class RegWorkplaceServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException, MessagingException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            String name=request.getParameter("name");
            String specialization=request.getParameter("specialization");
            String email=request.getParameter("email");
              String contact=request.getParameter("contact");
                String password=request.getParameter("password");
                      Class.forName("com.mysql.jdbc.Driver");
                      Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "tanyabhardwaj");
                      PreparedStatement AddUser=conn.prepareStatement("INSERT INTO workplace(workplace_name, workplace_specialization,workplace_email,workplace_contact,workplace_password) VALUES(?, ?, ?,?,?,?);");
                      AddUser.setString(1, name);
                      AddUser.setString(2, specialization);
                      AddUser.setString(3, email);
                      AddUser.setString(4, contact);
                      AddUser.setString(5, password);
                      AddUser.executeUpdate();
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegWorkplace</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegWorkplace at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
             String Email,Password,server,port;
        String t_address=email;
        String msgtext="You are successfully registered in IHS."
                + "Login to begin your search";
        Email="tbjune7@gmail.com";
        Password="1234567890@123";
        server="smtp.gmail.com";
        port="587";
         Properties props = new Properties();     
                props.put("mail.smtp.host", server);
                props.put("mail.smtp.port", port);   
                props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.auth", "true");         
                                                         
            // create some properties and get the default Session
             Session session = Session.getInstance(props, new javax.mail.Authenticator()
             {  
      @Override
      protected PasswordAuthentication getPasswordAuthentication() {  
    return new PasswordAuthentication(email,password);  
      }  
    });  
        
            
             MimeMessage message = new MimeMessage(session);
             message.setFrom(new InternetAddress(Email));
             message.addRecipient(Message.RecipientType.TO,new InternetAddress(t_address));
             message.setSubject(request.getParameter("message_subject"));
             message.setText(msgtext);
             Transport.send(message);
             response.sendRedirect("SubmitUser.jsp");
    }
    
            if(request.getParameter("Wtype")!=null)
            switch (request.getParameter("Wtype")) {
                case "hospital":
                    response.sendRedirect("SubmitHospital.jsp");
                    break;
                case "laboratory":
                    response.sendRedirect("SubmitLab.jsp");
                    break;
                default:
                   response.sendRedirect("SubmitClinic.jsp");   
            }
        }
    

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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegWorkplaceServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegWorkplaceServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(RegWorkplaceServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegWorkplaceServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegWorkplaceServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(RegWorkplaceServlet.class.getName()).log(Level.SEVERE, null, ex);
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
