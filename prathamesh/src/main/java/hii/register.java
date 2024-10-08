package hii;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/register")
public class register extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "root123");
            
            // Check if username already exists
            PreparedStatement checkStmt = con.prepareStatement("SELECT * FROM userinfo WHERE name=?");
            checkStmt.setString(1, username);
            ResultSet rs = checkStmt.executeQuery();
            
            if (rs.next()) {
                // Username already exists
                out.println("<h1>Registration failed. Username already exists. Please choose a different username.</h1>");
            } else {
                // Username doesn't exist, proceed with registration
                PreparedStatement insertStmt = con.prepareStatement("INSERT INTO userinfo(name, email, password) VALUES (?, ?, ?)");
                insertStmt.setString(1, username);
                insertStmt.setString(2, email);
                insertStmt.setString(3, password);
                
                int count = insertStmt.executeUpdate();
                
                if (count > 0) {
                    response.setContentType("text/html");
                    out.print("<h1>Registration successful</h1>");
                    response.sendRedirect("NewFile.jsp");
                } else {
                    response.sendRedirect("NewFile.html");
                    out.print("<h1>Registration failed</h1>");
                }
            }
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
