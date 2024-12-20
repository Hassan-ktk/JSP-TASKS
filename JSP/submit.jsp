<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Fetched</title>
</head>
<body>
    <h1>Data Fetched</h1>
    <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String age = request.getParameter("age");

        out.println("<p><strong>Name:</strong> " + name + "</p>");
        out.println("<p><strong>Email:</strong> " + email + "</p>");
        out.println("<p><strong>Age:</strong> " + age + "</p>");
    %>
</body>
</html>
