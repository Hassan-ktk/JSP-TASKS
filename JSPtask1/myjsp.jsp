<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-Type" content="text/html" charset="UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%= "<br><h1>Welcome  " + request.getParameter("text1")%>
    <%= "<br><h1>Your Roll no is " + request.getParameter("text2")%>
    <%= "<br><h1>Your Branch is " + request.getParameter("branch")%>
</body>
</html>