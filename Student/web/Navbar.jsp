<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar</title>
    <link rel="stylesheet" href="css/Navbar.css">
</head>
<body>
    <nav class="navbar">
        <div class="navbar_left">
            <a class="navbar_icon" href="WelcomePage.jsp">Home</a>
            <a class="navbar_icon" href="#about">About us</a>
            <a class="navbar_icon" href="http://localhost:8080/Student/home">Courses</a>
            <a class="navbar_icon" href="#">Create a quiz</a>
        </div>

        <div class="navbar_right">
            <a class="navbar_icon" href="Login.jsp">Login</a>
            <a class="navbar_icon" href="SignUp.jsp">Sign up</a>
        </div>
    </nav>
</body>
</html>