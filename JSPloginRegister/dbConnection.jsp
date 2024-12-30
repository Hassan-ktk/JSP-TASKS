<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String URL = "jdbc:mysql://localhost:3306/userdb";
    String Username = "root";
    String Password = ""; 

    Connection conn = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(URL, Username, Password);
        if (conn != null) {
            out.println("Database connection successful.");
        } else {
            out.println("Database connection failed.");
        }
    } catch (ClassNotFoundException e) {
        out.println("JDBC Driver not found.");
        e.printStackTrace();
    } catch (SQLException e) {
        out.println("SQLException: " + e.getMessage());
        e.printStackTrace();
    }
%>
