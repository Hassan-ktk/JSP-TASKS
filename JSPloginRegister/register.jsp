<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="dbConnection.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <h2>Registration</h2>
    <form method="post">
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        <button type="submit">Register</button>
    </form>

    <%
    if (conn != null) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username != null && password != null) {
            try {
                String query = "INSERT INTO data (username, password) VALUES (?, ?)";
                PreparedStatement stmt = conn.prepareStatement(query);
                stmt.setString(1, username);
                stmt.setString(2, password);
                stmt.executeUpdate();
                out.println("<p>Registration successful! <a href='login.jsp'>Login here</a>.</p>");
            } catch (SQLException e) {
                out.println("<p>Registration failed: Username already exists.</p>");
            }
        }
    }
    else {
        out.println("<p>Database connection failed. Please try again later.</p>");
    }
%>

</body>
</html>
