package sendRedirectDemo__Internal__Redirect;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        
        String username = request.getParameter("uname");
        String myEmail = request.getParameter("email1");
        String password = request.getParameter("pass");
        String gender = request.getParameter("gender1");
        String cityName = request.getParameter("cityname");

        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        Connection con = null;
        PreparedStatement ps = null;

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish connection to the database
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "Shubham123");

            // Prepare SQL statement
            ps = con.prepareStatement("INSERT INTO register (name, email, password, gender, cityName) VALUES (?, ?, ?, ?, ?)");

            // Set parameters
            ps.setString(1, username);
            ps.setString(2, myEmail); 
            ps.setString(3, password);
            ps.setString(4, gender);
            ps.setString(5, cityName);

            // Execute the insert statement
            int count = ps.executeUpdate();

            if (count > 0) {
                out.print("<h3 style='color:green'>Registration Successful!</h3>");
                RequestDispatcher rd = request.getRequestDispatcher("/welcome.jsp");
                rd.forward(request, response);
            } else {
                out.print("<h3 style='color:red'>Registration Failed: Please try again.</h3>");
                RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
                rd.include(request, response);
            }
        } 
        catch (SQLException e) 
        {
            e.printStackTrace(); // For debugging; consider logging this
            out.print("<h3 style='color:red'>SQL Exception Occurred: " + e.getMessage() + ".</h3>");
            RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
            rd.include(request, response);
        } 
        catch (ClassNotFoundException e) 
        {
            e.printStackTrace(); // Class not found; JDBC driver may not be in 

            out.print("<h3 style='color:red'>JDBC Driver not found!</h3>");
            RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
            rd.include(request, response);
        }
        finally 
        {
            // Close resources in the finally block to ensure they're closed even if an exception occurs
            try 
            {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } 
            catch (SQLException e)
            {
                e.printStackTrace(); // Handle closing exceptions
            }
        }
    }
}
