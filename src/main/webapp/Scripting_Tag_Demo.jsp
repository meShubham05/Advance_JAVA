<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%! 
    		int a =10;
    		String name ="java Programming ";
    		
    		int cubeOf()
    		{
    			return a*a*a;
    		}
    		  		   	
    %>
    
    
    <% 
    	
    		int b=20;
    
    		if(a>b)
   			{
    			out.println("\n A is Greater Number : \n");
    			
    		}
    		else
    		{
    			out.print("B is Greater Number :\n");
    		}
    
    		for(int i=0;i<5;i++)
    		{
    			out.print(i+" \n");
    		}
    
    
    %>
    
    	<%= a %>
    	<%= name %>
    	<%= cubeOf() %>
    	<%= b %>
    
</body>
</html>