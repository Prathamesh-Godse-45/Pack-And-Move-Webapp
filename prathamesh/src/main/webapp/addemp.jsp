<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.io.IOException" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>

<html>

<body>
<%




String name = request.getParameter("ename");
String job = request.getParameter("job");
String salary = request.getParameter("salery");
String age = request.getParameter("age");
String mobile = request.getParameter("mobileno");


try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "root123");
    PreparedStatement pst = con.prepareStatement("insert into employee2 (ename,job,salery,age,mobileno) values (?, ?, ?, ?, ?)");
    pst.setString(1, name);
    pst.setString(2, job);
    pst.setString(3, salary);
    pst.setString(4, age);
    pst.setString(5, mobile);

    int count= pst.executeUpdate();
    if(count>0) {
		response.setContentType("text/html");
		response.sendRedirect("Employeedetails.jsp");
		
	}
		
	else {
		
		out.print("<h1>fail</h1>");
	

        
%>
<%
   
	}
    } catch (ClassNotFoundException | SQLException a) {
    // Log the error or present a user-friendly error message
    a.printStackTrace();
    out.println(a);
} 
%>
<%System.out.println("Ename: " + name);
System.out.println("Ejob: " + job);
//... (similar lines for other variables)
%>
</body> 
</html>


    

  