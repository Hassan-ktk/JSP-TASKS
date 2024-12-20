<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
</head>
<body>
    <h1>Welcome to the Dashboard</h1>
    <%
        String user = request.getParameter("uname");
        
        if (user != null) {
            session.setAttribute("uname", user);
            out.println("<p>Welcome, " + user + "!</p>");
        } else {
            out.println("<p>No username provided. Please <a href='form.jsp'>submit your information</a> first.</p>");
        }
    %>
    <a href='session.jsp'>submited information</a>
    <h2><%= session.getAttribute("uname") %></h2>
</body>
</html>
