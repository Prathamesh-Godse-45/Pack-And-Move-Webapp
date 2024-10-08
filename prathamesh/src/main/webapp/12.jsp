<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.text.DecimalFormat" %>

<%
    // Define city locations
    Map<String, double[]> cityLocations = new HashMap<>();
    cityLocations.put("CSMT", new double[]{1, 1});
    cityLocations.put("Bhiwandi", new double[]{26, 36});
    cityLocations.put("Borivali", new double[]{4, 28});
    cityLocations.put("Dader", new double[]{5, 9});
    cityLocations.put("Dombiwali", new double[]{34, 30});
    cityLocations.put("Kurla", new double[]{7, 12});
    cityLocations.put("Ghatkopar", new double[]{10, 15});
    cityLocations.put("Thane", new double[]{25, 28});
    cityLocations.put("Diva", new double[]{30, 30});
    cityLocations.put("Bandra", new double[]{1, 11});
    cityLocations.put("Andheri", new double[]{3, 20});
    cityLocations.put("Vasai", new double[]{3, 40});
    cityLocations.put("Vashi", new double[]{25, 12});
    cityLocations.put("Neral", new double[]{28, 10});
    cityLocations.put("Panvel", new double[]{39, 5});
    cityLocations.put("Kalyan", new double[]{38, 32});
    cityLocations.put("Badalapur", new double[]{48, 26});

    // Get user-selected origin and destination cities
    String origin = request.getParameter("origin");
    String destination = request.getParameter("destination");

    // Calculate distance based on Euclidean distance
    double[] originLocation = cityLocations.get(origin);
    double[] destinationLocation = cityLocations.get(destination);
    double distance = Math.sqrt(Math.pow(destinationLocation[0] - originLocation[0], 2) +
                                Math.pow(destinationLocation[1] - originLocation[1], 2));

    // Assign prices based on distance (adjust as needed)
    double basePrice = 500;
    double price = basePrice + 100 * distance;

    // Format the price to display with two decimal places
    DecimalFormat decimalFormat = new DecimalFormat("#.##");
    String formattedPrice = decimalFormat.format(price);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Price Calculation Result</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            color: #333;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            color: #ff6f61;
            text-align: center;
            margin-bottom: 20px;
        }

        p {
            color: #333;
            font-size: 18px;
            text-align: center;
        }

        .result-container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            padding: 30px;
            width: 300px;
            text-align: center;
        }

        button {
            background-color: #ff6f61;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #ff3b34;
        }
    </style>
</head>
<body>

    <div class="result-container">
        <h2>Price Calculation Result</h2>
        <p>The price from <%= origin %> to <%= destination %> is Rs  <%= formattedPrice %></p>
        <button onclick="window.history.back()">Go Back</button>
    </div>

</body>
</html>