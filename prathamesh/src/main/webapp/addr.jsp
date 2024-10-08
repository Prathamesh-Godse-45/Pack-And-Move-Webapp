<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pickup Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background-color: #333;
            color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 400px;
        }

        .form-container label {
            display: block;
            margin: 10px 0 5px;
        }

        .form-container input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-container input[type="submit"] {
            background-color: #ff6600;
            color: #fff;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover {
            background-color: #e64d00;
        }

        .error-message {
            color: red;
            margin-top: 5px;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Pickup Form</h2>
        <form action="processPickup.jsp" method="post">
            <%
                String pickupPost = request.getParameter("pickuppost");
                String dropPost = request.getParameter("droppost");
                String mobileNumber = request.getParameter("mobileno");
                String errorMessage = "";

                if (pickupPost != null && !pickupPost.matches("\\d{6}")) {
                    errorMessage = "Postal code must be a 6-digit number";
                } else if (dropPost != null && !dropPost.matches("\\d{6}")) {
                    errorMessage = "Postal code must be a 6-digit number";
                } else if (mobileNumber != null && !mobileNumber.matches("\\d{10}")) {
                    errorMessage = "Mobile number must be a 10-digit number";
                }
            %>
            <div class="form-group">
                <label for="pickupadd"> Pickup address</label>
                <input type="text" id="pickupadd" name="pickupadd" required>
            </div>
            
            <div class="form-group">
                <label for="dropadd">Drop Address</label>
                <input type="text" id="dropadd" name="dropadd" required>
            </div>
            
            <div class="form-group">
               <label for="pickuppost">postal code of pickup address</label>
<input type="text" id="pickuppost" name="pickuppost" required pattern="\d{6}" title="Postal code must be a 6-digit number">

<label for="droppost">postal code of Drop address</label>
<input type="text" id="droppost" name="droppost" required pattern="\d{6}" title="Postal code must be a 6-digit number">

            </div>
            
            
            
            <div class="form-group">
                <label for="pickupDate">pickup date</label>
                <input type="date" id="pickupdate" name="pickupdate" required>
            </div>

            <div class="form-group">
                <label for="mobileNumber">Mobile Number:</label>
                <input type="text" id="mobileNumber" name="mobileno" required pattern="\d{10}" title="Enter 10-digit mobile number">
                <div class="error-message"><%= errorMessage %></div>
            </div>

            <input type="submit" value="submit" name="request">
        </form>
    </div>
</body>
</html>
