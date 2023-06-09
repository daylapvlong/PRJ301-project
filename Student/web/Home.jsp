<%-- Document : home Created on : Jun 6, 2023, 8:11:16 AM Author : admin's --%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <!--                <div class="search-wrapper">
                    <form class="search_form" action="">
                        <input class="search_input" type="text" placeholder="Search for choices..." />
                        <button class="search_button" type="button">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path
                                d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z">
                            </path>
                            </svg>
                        </button>
                    </form>
                </div>-->
                    </div>

                    <div class="navbar_right">
                        <a class="navbar_icon" href="Login.jsp">Login</a>
                        <a class="navbar_icon" href="SignUp.jsp">Sign up</a>
                        <a class="navbar_icon" href="#about">Create a quiz</a>
                    </div>
                </nav>

                <div class="body_container">
                    <div class="body_function_container">
                        <div class="enter_code_container col-sm-7">
                            <div class="inner-form">
                                <form class="enter_code_form" action="">
                                    <input class="enter_code_input" id="choices-text-preset-values" type="text"
                                        placeholder="Enter quiz code..." />
                                    <button class="enter_code_button" type="button">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24">
                                            <path
                                                d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z">
                                            </path>
                                        </svg>
                                    </button>
                                </form>
                            </div>
                        </div>
                        <div class="profile_container col-sm-4">
                            <div class="profile_box">
                                <div class="profile_header">
                                    <h2>Name of user</h2>
                                </div>
                            </div>
                            <div class="profile_body">
                                <a class="" href="">Edit Profile</a>
                                <p class="profile_body_slash">/</p>
                                <a class="" href="">View Activity</a>
                            </div>
                        </div>
                    </div>

                    <div class="body_content_container">
                        <div class="dropdown">
                            <button onclick="myFunction()" class="dropbtn">Semester</button>
                            <div id="myDropdown" class="dropdown-content">
                                <c:forEach items="${listCategory}" var="o">
                                    <a href="category?cid=${o.categoryId}" class="active">${o.categoryName}</a>
                                </c:forEach>
                            </div>
                        </div>

                        <div class="content_container">
                            <c:forEach items="${listCourse}" var="o">
                                <div class="content_wrapper">
                                    <h2>${o.courseName}</h2>
                                    <p>${o.description}</p>
                                    <a class="content_button" href="#">View course now</a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>

                <div>
                    <h1>Footer</h1>
                </div>

                <script>
                    /* When the user clicks on the button, 
                     toggle between hiding and showing the dropdown content */
                    function myFunction() {
                        document.getElementById("myDropdown").classList.toggle("show");
                    }

                    // Close the dropdown if the user clicks outside of it
                    window.onclick = function (event) {
                        if (!event.target.matches('.dropbtn')) {
                            var dropdowns = document.getElementsByClassName("dropdown-content");
                            var i;
                            for (i = 0; i < dropdowns.length; i++) {
                                var openDropdown = dropdowns[i];
                                if (openDropdown.classList.contains('show')) {
                                    openDropdown.classList.remove('show');
                                }
                            }
                        }
                    }
                </script>
            </body>

            </html>