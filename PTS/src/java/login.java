/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mathics
 */
public class login extends HttpServlet {

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
            String uname = request.getParameter("Username");
            String pass = request.getParameter("Password");
            
            HttpSession session = request.getSession();
            session.setAttribute("uname", uname);
            
            MyDb db = new MyDb();
            
            
            Connection con = db.getCon();
            
            out.println("con established->" + con);
            
            Statement stmt = con.createStatement();
            out.println("stmt created");
            out.println("Everyting is fine ");
            
            request.getSession().setAttribute("name", uname);
            request.getSession().setAttribute("password", pass);
            
            
            System.out.println("name: " + uname + "pass: " + pass);
            
            
            boolean authorization = db.kullanıcıKontrol(uname, pass);
            
            //checks id and password in login
            
            
            if(authorization == true)
            {
             ArrayList<String> str = db.Myboards(uname);
                request.getSession().setAttribute("BoardNames", str);
                
                str = db.LeaderBoards(uname);
                request.getSession().setAttribute("LeadedBoardNames", str);
                
                str = db.LeaderBoards(uname);
                request.getSession().setAttribute("ParticipatedBoardNames", str);
                response.sendRedirect(request.getContextPath()+"/jsp/userPage.jsp");
            }
            else
            {
                response.sendRedirect("");
            }
            
            
           // request.getSession().setAttribute("ID", db.UsernameToId(uname));
            
          //  response.sendRedirect(request.getContextPath()+"/jsp/userPage.jsp");
                
             
            
            
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
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