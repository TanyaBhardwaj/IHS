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
import java.util.Random;
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

/**
 *
 * @author Tanya
 */
@WebServlet(name = "RegDocServlet", urlPatterns = {"/RegDoc"})
public class RegDocServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     * @throws javax.mail.MessagingException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException, MessagingException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String Name=request.getParameter("name");
            String Email=request.getParameter("email");
            String Category=request.getParameter("category");
            String Contact=request.getParameter("contact");
           // String Password=request.getParameter("password");
              String allowedchars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            Random rand=new Random();
            char[] Password=new char[6];
            int i;
            for(i=0;i<Password.length;i++)
            {
                Password[i]=allowedchars.charAt(rand.nextInt(allowedchars.length()));
            }
                      Class.forName("com.mysql.jdbc.Driver");
                      Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "tanyabhardwaj");
                      PreparedStatement AddAuth=conn.prepareStatement("INSERT INTO auth(auth_id,auth_password,auth_type) VALUES(?,?,?)");
                      AddAuth.setString(1, Email);
                      AddAuth.setString(2, new String(Password));
                      AddAuth.setString(3, "Doctor");
                      AddAuth.executeUpdate();
                      PreparedStatement AddUser=conn.prepareStatement("INSERT INTO doctor(doc_name, doc_category,doc_email,doc_phone ) VALUES(?, ?, ?, ?);");
                      AddUser.setString(1, Name);
                      AddUser.setString(2, Category);
                      AddUser.setString(3, Email );
                      AddUser.setString(4, Contact);
                     
                      AddUser.executeUpdate();
                      //response.sendRedirect("SubmitUser.jsp");
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegDoc</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegDoc at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            String email,password,server,port;
        String t_address=Email;
        String msgtext="You are successfully registered in IHS."
                + "Login to begin your search.Your password is"+new String(Password);
        email="tbjune7@gmail.com";
        password="1234567890@123";
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
             message.setFrom(new InternetAddress(email));
             message.addRecipient(Message.RecipientType.TO,new InternetAddress(t_address));
             message.setSubject(request.getParameter("message_subject"));
             message.setText(msgtext);
             Transport.send(message);
             response.sendRedirect("SubmitDoc.jsp");
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
            Logger.getLogger(RegUserServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegUserServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(RegUserServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(RegUserServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegUserServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(RegUserServlet.class.getName()).log(Level.SEVERE, null, ex);
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