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
                <div class="body_function_container">
                    <div class="enter_code_container col-sm-7">
                        <form class="enter_code_form" action="">
                            <input class="enter_code_input" type="text" placeholder="Enter code">
                            <button class="enter_code_button">Enter</button>
                        </form>
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
                        <button onclick="myFunction()" class="dropbtn">Dropdown</button>
                        <div id="myDropdown" class="dropdown-content">
                          <a href="#home">Semester 1</a>
                          <a href="#about">Semester 2</a>
                          <a href="#contact">Semester 3</a>
                          <a href="#contact">Semester 4</a>
                        </div>
                    </div>

                    <div class="content_container">
                            <!-- <c:forEach items="${listCourse}" var="o"> -->
                                <div class="content_wrapper">
                                    <!-- <h2>${o.courseName}</h2>
                                    <p>${o.description}</p> -->
                                    <h2>PRF192</h2>
                                    <p>Programming Fundamental</p>
                                    <a class="content_button" href="#">View course now</a>
                                </div>

                                <div class="content_wrapper">
                                    <!-- <h2>${o.courseName}</h2>
                                    <p>${o.description}</p> -->
                                    <h2>PRF192</h2>
                                    <p>Programming Fundamental</p>
                                    <a class="content_button" href="#">View course now</a>
                                </div>

                                <div class="content_wrapper">
                                    <!-- <h2>${o.courseName}</h2>
                                    <p>${o.description}</p> -->
                                    <h2>PRF192</h2>
                                    <p>Programming Fundamental</p>
                                    <a class="content_button" href="#">View course now</a>
                                </div>

                                <div class="content_wrapper">
                                    <!-- <h2>${o.courseName}</h2>
                                    <p>${o.description}</p> -->
                                    <h2>PRF192</h2>
                                    <p>Programming Fundamental</p>
                                    <a class="content_button" href="#">View course now</a>
                                </div>
                             <!--  </c:forEach> -->
                        </div>
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
                window.onclick = function(event) {
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