<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Employee Details</title>
</head>
<body>
<%
    String name = request.getParameter("Name");
    String job = request.getParameter("job");
    String salary = request.getParameter("salery");
    String age = request.getParameter("age");
    String mobileNo = request.getParameter("mobileno");

    // Check if any parameter is null
    if (name != null && job != null && salary != null && age != null && mobileNo != null) {
        // Print the received data
        out.println("Name: " + name + "<br>");
        out.println("Job: " + job + "<br>");
        out.println("Salary: " + salary + "<br>");
        out.println("Age: " + age + "<br>");
        out.println("Mobile No: " + mobileNo + "<br>");
    } else {
        out.println("One or more parameters are null.");
    }
%>
</body>
</html>
