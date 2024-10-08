<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%


String s1=request.getParameter("username");

String s2=request.getParameter("password");


if (s1.equals("prathamesh") && s2.equals("root@1234")) {
    
    response.sendRedirect("Ad.jsp");
} else {
    // Invalid credentials, redirect to home page
    response.sendRedirect("home.jsp");
}
%>



</body>
</html>