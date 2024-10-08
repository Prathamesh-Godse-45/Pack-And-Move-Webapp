<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Price Calculation</title>
</head>
<body>

<%
    String origin = request.getParameter("origin");
    String destination = request.getParameter("destination");

    // Define prices for different routes
    int priceAB = 10;
    int priceBC = 15;
    int priceCD = 12;
    int priceDE = 18;

    int selectedPrice = 0;

    // Check the selected route and set the corresponding price
    if (origin.equals("Thane") && destination.equals("Pune")) {
        selectedPrice = priceAB;
    } else if (origin.equals("b") && destination.equals("c")) {
        selectedPrice = priceBC;
    } else if (origin.equals("c") && destination.equals("d")) {
        selectedPrice = priceCD;
    } else if (origin.equals("d") && destination.equals("e")) {
        selectedPrice = priceDE;
    } else {
        // Handle invalid routes
        out.println("Invalid route selected");
    }
%>

<p>Origin: <%= origin %></p>
<p>Destination: <%= destination %></p>
<p>Price: $<%= selectedPrice %></p>

</body>
</html>