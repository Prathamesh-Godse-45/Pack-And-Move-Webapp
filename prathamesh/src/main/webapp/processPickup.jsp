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


}
</style>
    <title>REQUEST INFORMATION</title>
</head>
<body>

    <h2>REQUEST INFORMATION</h2>

    <% 
    
    

	String pickup = request.getParameter("pickupadd");
	String drop = request.getParameter("dropadd");
	String pickpost=request.getParameter("pickuppost");
	String dropost = request.getParameter("droppost");
	String pickdate = request.getParameter("pickupdate");
	String mobile = request.getParameter("mobileno");
    
    
    
    
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "root123");
            PreparedStatement pst = con.prepareStatement("insert into address (pickupadd,dropadd,pickuppost,droppost,pickupdate,mobileno ) values(?,?,?,?,?,?)");
            pst.setString(1, pickup);
            pst.setString(2, drop);
            pst.setString(3, pickpost);
            pst.setString(4, dropost);
            pst.setString(5, pickdate);
            pst.setString(6, mobile);
            
            
            
            
            
            int count= pst.executeUpdate();
            if(count>0) {
    			response.setContentType("text/html");
    			out.print("<h1>success</h1>");
    			response.sendRedirect("sucess.jsp");
    		}
    			
    		else {
    			response.sendRedirect("NewFile.html");
    			out.print("<h1>fail</h1>");

                
    %>
    <%
            }
        } catch (ClassNotFoundException | SQLException e) {
            // Log the error or present a user-friendly error message
            e.printStackTrace();
        } 
    %>

</body>
</html>
