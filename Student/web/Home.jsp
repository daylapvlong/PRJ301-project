<%-- Document : home Created on : Jun 6, 2023, 8:11:16 AM Author : admin's --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        <!--===============================================================================================-->
            <link rel="stylesheet" href="css/Navbar.css">
            <link rel="stylesheet" href="css/Home.css">
        <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        </head>

        <body>

            <nav class="navbar">
                <div class="navbar_left">
                    <a class="navbar_icon" href="#home">Home</a>
                    <input class="searchbar" type="text" placeholder="Search..">
                </div>

                <div class="navbar_right">
                    <a class="navbar_icon" href="Login.jsp">Login</a>
                    <a class="navbar_icon" href="SignUp.jsp">Sign up</a>
                    <a class="navbar_icon" href="#about">Create a quiz</a>
                </div>
            </nav>

            <div class="body_container">
                <div class="enter_code_container">
                    <h2>Enter code</h2>
                    <input class="enter_code_input" type="text" placeholder="Enter code">
                    <button class="enter_code_button">Enter</button>
                </div>
                <div class="profile_container">
                    <div class="profile_box">
                        <div class="profile_span">
                            <h2>Name of user</h2>
                        </div>
                    </div>
                    <a class="" href="">Edit Profile</a>
                    <a class="" href="">View Activity</a>
                </div>
            </div>
            <div>
                <h1>Footer</h1>
            </div>
        </body>

        </html>