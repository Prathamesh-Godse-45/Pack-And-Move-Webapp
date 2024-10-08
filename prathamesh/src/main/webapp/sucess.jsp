<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success Page</title>
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
  
  .success-container {
    text-align: center;
  }

  .success-gif {
    width: 400px; /* Adjust width as needed */
    height: auto;
    margin-bottom: 20px;
    border-radius: 20px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
    animation: pulse 2s infinite alternate;
  }

  @keyframes pulse {
    0% {
      transform: scale(1);
    }
    100% {
      transform: scale(1.1);
    }
  }

  .text-overlay {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: black;
    font-size: 24px;
    font-weight: bold;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    animation: slideIn 1s forwards;
    opacity: 0;
  }

  @keyframes slideIn {
    from {
      top: 10%;
      opacity: 0;
    }
    to {
      top: 60%;
      opacity: 1;
    }
  }
</style>
</head>
<body>

<div class="success-container">
  <div class="position-relative">
    <img src="success1.gif" class="success-gif" alt="Success">
    <div class="text-overlay">Request Sent Successfully</div>
   
  </div>
  We are pleased to inform you that your recent transaction has been successfully processed. As part of our commitment to keeping you informed, we will be contacting you via phone call shortly to provide you with further details.
   Thank you for choosing our services. 
  Should you have any questions or require assistance,please do not hesitate to contact us.Phone no.8652028272
</div>

</body>
</html>
