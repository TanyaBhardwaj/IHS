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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Tanya
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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
 
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
       Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/ihs", "root", "tanyabhardwaj");
       
      PreparedStatement getAuth=conn.prepareStatement("Select auth_id, auth_password,auth_type from ihs.auth where auth_id=? and auth_password=?");
      getAuth.setString(1, username);
      getAuth.setString(2, password);
      ResultSet Auth=getAuth.executeQuery( );
        HttpSession session=request.getSession();
      
          if(Auth.first())
          {
              
                switch (Auth.getString("auth_type")) {
                    case "User":
                        PreparedStatement getusers=conn.prepareStatement("select user_id from user where user_email=?");
                        getusers.setString(1, username);
                        ResultSet users=getusers.executeQuery();
                        users.first();
                        
                        session.setAttribute("user_id", users.getString("user_id"));
                        response.sendRedirect("UserLoginResult.jsp");
                        break;
                    case "Doctor":
                        PreparedStatement getdocs=conn.prepareStatement("select doc_id from doctor where doc_email=?");
                        getdocs.setString(1, username);
                        ResultSet docs=getdocs.executeQuery();
                        docs.first();
                        session.setAttribute("doc_id", docs.getString("doc_id"));
                        response.sendRedirect("DocLoginResult.jsp");
                        break;
                    case "Workplace":
                        PreparedStatement getworkplace=conn.prepareStatement("select workplace_id from workplace where workplace_email=?");
                        getworkplace.setString(1, username);
                        ResultSet workplace=getworkplace.executeQuery();
                        workplace.first();
                        session.setAttribute("workplace_id", workplace.getString("workplace_id"));
                        response.sendRedirect("WorkplaceLoginResult.jsp");
                        break;
                    default:
                        break;
                }   
              
          }
      
           
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
