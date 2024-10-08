<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="login.css">
</head>
<body style="background-image: url('truck.jpg');background-size: cover;background-position: center;">

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String errorMessage = "";

    if (username != null && password != null) {
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "root123");
            pst = con.prepareStatement("SELECT * FROM userinfo WHERE name=? AND password=?");
            pst.setString(1, username);
            pst.setString(2, password);
            rs = pst.executeQuery();

            if (rs.next()) {
                
                response.sendRedirect("home.jsp");
            } else {
                errorMessage = "Invalid username or password. Please try again.";
            }
        } catch (Exception e) {
            e.printStackTrace();
            errorMessage = "An error occurred. Please try again later.";
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>

<form action="homer.jsp" method="post">
    <div class="login-container">
        <h1 class="glow"> LOGIN HERE</h1>
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" name="username" class="username" id="username" required minlength="3" pattern="[A-Za-z0-9]{3,}" title="Username must be at least 3 characters and can contain letters and numbers only"/>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" name="password" class="password" id="password" required minlength="6" pattern=".{6,}" title="Password must be at least 6 characters"/>
        </div>
        <% if (!errorMessage.isEmpty()) { %>
            <div style="color: red;"><%= errorMessage %></div>
        <% } %>
        <button type="submit">Login</button>
    </div>
</form>

</body>
</html>
