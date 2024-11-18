<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% //String str =(String) request.getAttribute("name_key");
 // above method is used before session
 String str =(String) session.getAttribute("name_key"); %>
     <h1>Welcome to the Banking Service :  <%=str%></h1>
    
    <div class="service-list">
    	<a href="welcome.jsp">Profile</a>
       
        <a href="about-us.jsp">About Us</a>
    </div>
    
    

</body>
</html>