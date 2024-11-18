<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Banking Service</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('https://images.pexels.com/photos/4425716/pexels-photo-4425716.jpeg'); /* Replace with a banking-style image */
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            color: white; /* Change text color for better visibility */
            text-align: center; /* Center-align the text */
            position: relative; /* For pseudo-element positioning */
        }

        h1 {
            color: #ffffff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Adding a shadow for better visibility */
            margin-bottom: 20px;
            font-size: 2.5rem; /* Increased font size */
        }

        .service-list {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .service {
            background: rgba(255, 255, 255, 0.9); /* Light background with some transparency */
            color: #007bff;
            padding: 15px 25px;
            border: none;
            border-radius: 5px;
            margin: 5px;
            cursor: pointer;
            transition: background 0.3s, color 0.3s, transform 0.3s; /* Added transform effect */
            text-decoration: none; /* Remove underline from links */
            font-size: 1.2rem; /* Increased font size for better readability */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add shadow for depth */
        }

        .service:hover {
            background: #007bff;
            color: white;
            transform: translateY(-3px); /* Slight lift effect on hover */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3); /* Enhance shadow on hover */
            filter: brightness(90%); /* Darken the background on hover */
        }

        /* Add a semi-transparent overlay for better text visibility */
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black overlay */
            z-index: 1; /* Make sure overlay is on top */
        }

        /* Ensure the content is above the overlay */
        .content {
            position: relative;
            z-index: 2; /* Content above overlay */
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="content">
        <% 
            String str = (String) session.getAttribute("name_key");
        %>
        <h1>Welcome to the Banking Service: <%= str %></h1>
        
        <div class="service-list">
            <a class="service" href="home.jsp">Home</a>
            <a class="service" href="service">Check Account Balance</a>
            <a class="service" href="service">Transfer Funds</a>
            <a class="service" href="service">View Transaction History</a>
            <a class="service" href="service">Apply for a Loan</a>
            <a class="service" href="about-us.jsp">About Us</a>
          <a class="service" href="logout" style="background-color: red; color:white">Logout</a>
    </div>
    </div>
</body>
</html>
