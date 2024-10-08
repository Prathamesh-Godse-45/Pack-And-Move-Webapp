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
<title>Employee Information</title>
</head>
<body>
    <h2>Employee Information</h2>

    <% 
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "root123");
            PreparedStatement pst = con.prepareStatement("SELECT ename, job, salery, age, mobileno FROM employee2");
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                String name = rs.getString("ename");
                String job = rs.getString("job");
                String salary = rs.getString("salery");
                String age = rs.getString("age");
                String mobile = rs.getString("mobileno");
    %>
                <div class="info"> 
                    <p>Name: <%= name %></p>
                    <p>Job: <%= job %></p>
                    <p>Salary: <%= salary %></p>
                    <p>Age: <%= age %></p>
                    <p>Mobile: <%= mobile %></p>
                </div> 
    <%
            }
        } catch (ClassNotFoundException | SQLException e) {
            // Log the error or present a user-friendly error message
            e.printStackTrace();
        } 
    %>
</body>
</html>
