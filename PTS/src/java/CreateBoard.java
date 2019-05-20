/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.mysql.cj.Session;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mathics
 */
//@WebServlet("/CreateBoard")
public class CreateBoard extends HttpServlet {

    Connection conn;
    Statement createBoard;
    String project_name;

    /**
     * Handles the HTTP <code>POST</code> method.
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
            out.println("creating board...");
            project_name = request.getParameter("project_name");
            MyDb db = new MyDb();
            HttpSession session = request.getSession(false);
            String uname = (String) session.getAttribute("uname");
            out.println("uname->" + uname);
//            out.println("   session  ->"+session);

//            Cookie ck[] = request.getCookies();
//            out.println("Hi " + ck[0].getValue());
            try {
                conn = db.getCon();
                createBoard = conn.createStatement();
                int id = db.UsernameToId(uname);
//                System.out.println("id-> " + id);
// check if exists in supersuer
                String queryCheck = "SELECT Person_ID FROM SuperUser WHERE Person_ID=" + "\"" + id + "\"" + ";";  //get Person_ID
                Statement stmt = conn.prepareStatement(queryCheck);
                ResultSet rs = stmt.executeQuery(queryCheck);

                if (rs != null) {
                    //if Person_ID exists in SuperUser, only inser to Board
                    String queryBoard = "INSERT INTO Board(Person_ID, project_name) VALUES(" + id + ",'" + project_name + "');";
                    createBoard.executeUpdate(queryBoard);
                } else {
                    // if Person_ID does not exist in SuperUser
                    String queryPriv = "INSERT INTO Privileged_User(Person_ID) VALUE(" + id + ");";
                    String querySuper = "INSERT INTO SuperUser(Person_ID) VALUE(" + id + ");";
                    String queryBoard = "INSERT INTO Board(Person_ID, project_name) VALUES(" + id + ",'" + project_name + "');";
                    createBoard.executeUpdate(queryPriv);
                    createBoard.executeUpdate(querySuper);
                    createBoard.executeUpdate(queryBoard);

                }

                //INSERT INTO Board VALUES (@project_id, @person_id, @project_name)
                System.out.println("board created.");
                /*
                //Adding to Privileged user
                //Adding to SuperUser
                String addToPrivilegedUser = "INSERT INTO Privileged_User VALUES(?)";
                PreparedStatement forPrivUser = conn.prepareStatement(addToPrivilegedUser);
                forPrivUser.setInt(1, id);
                
                int i = forPrivUser.executeUpdate();
                System.out.println(i + "records are inserted to privileged user");
                
                //Adding to SuperUser
                String addToSuperUser = "INSERT INTO SuperUser VALUES(?)";
                PreparedStatement forSuperUser = conn.prepareStatement(addToSuperUser);
                forSuperUser.setInt(1, id);
                
                i = forSuperUser.executeUpdate();
                System.out.println(i + "records are inserted to SuperUser");
                 */
//                out.println("created board.");

                ArrayList<String> str = db.Myboards(uname);
                request.getSession().setAttribute("BoardNames", str);

                str = db.LeaderBoards(uname);
                request.getSession().setAttribute("LeadedBoardNames", str);

                str = db.LeaderBoards(uname);
                request.getSession().setAttribute("ParticipatedBoardNames", str);
                response.sendRedirect("jsp/userPage.jsp");
            } catch (SQLException ex) {
                Logger.getLogger(CreateBoard.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

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

}
