<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<style type="text/css">
body {
    background-color: #fdf6ec;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

.info {
    background-color: #ffcc99;
    border: 1px solid #ff9966;
    padding: 20px;
    margin-bottom: 30px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.info p {
    margin: 10px 0;
    font-size: 16px;
    color: black; /* Orange color for paragraph text */
}

.info p:not(:last-child) {
    margin-bottom: 15px;
}

.info::after {
    content: "";
    display: block;
    height: 1px;
    background-color: #ccc; 
    margin-top: 15px;
}

h2 {
    background-color: orange;
    padding: 15px 0;
    text-align: center;
    color: #7d4700;
    font-size: 24px;
    font-weight: bold;
    border-bottom: 1px solid #cc8533;
}
</style>
<title></title>
</head>
<body>
    <h2>vehicle Information</h2>

    <% 
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "root123");
            PreparedStatement pst = con.prepareStatement("SELECT * FROM vehicle");
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
            	String catagory = rs.getString("catagory");
            	String info = rs.getString("vehicalinfo");
    %>
                <div class="info"> 
                    <p>Category of vehicle: <%= catagory %></p>
                    <p>Info of vehicle: <%= info %></p>
                   
                </div> 
    <%
            }
        } catch (ClassNotFoundException | SQLException a) {
            // Log the error or present a user-friendly error message
            a.printStackTrace();
        } 
    %>
</body>
</html>
