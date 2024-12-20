<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Time</title>
</head>
<body>
    <h1>Current Time</h1>
    <%= new java.util.Date() %>

    <h1>User Information Form</h1>
    
    <form action="submit.jsp" method="POST">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required><br><br>

        <input type="submit" value="Submit">
    </form>

    <br><br><br>

    <h1>Session in JSP</h1>

    <form action="dashboard.jsp" method="POST">
        <label for="uname">Name:</label>
        <input type="text" id="name" name="uname" required><br><br>

        <input type="submit" value="Submit">
    </form>

</body>
</html>
