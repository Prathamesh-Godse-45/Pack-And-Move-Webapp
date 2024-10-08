<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String username = request.getParameter("name");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    int count = 0;
    String errorMessage = "";
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "root123");
        
        // Check if username already exists
        pst = con.prepareStatement("SELECT * FROM userinfo WHERE name=?");
        pst.setString(1, username);
        rs = pst.executeQuery();
        
        if (rs.next()) {
            // Username already exists
            errorMessage = "Registration Failed. Username already exists.";
        } else {
            // Username doesn't exist, proceed with registration
            pst.close(); // close previous prepared statement
            pst = con.prepareStatement("INSERT INTO userinfo(name, email, password) VALUES (?, ?, ?)");
            pst.setString(1, username);
            pst.setString(2, email);
            pst.setString(3, password);
            
            count = pst.executeUpdate();
            if (count > 0) {
                // Registration successful
                response.sendRedirect("NewFile.jsp");
            } else {
                errorMessage = "Registration Failed. Please try again later.";
            }
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
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Status</title>
    <script>
        function displayError() {
            var errorMessage = "<%= errorMessage %>";
            if (errorMessage !== "") {
                document.getElementById("error").innerHTML = errorMessage;
            }
        }
        window.onload = displayError;
    </script>
</head>
<body>
    <h1>Registration Status</h1>
    <div id="error" style="color: red;"></div>
</body>
</html>
