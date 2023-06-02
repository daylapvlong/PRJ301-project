<%-- Document : SignUp Created on : Jun 1, 2023, 10:10:10 AM Author : admin's --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Sign Up Page</title>

            <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="css/util.css">
            <link rel="stylesheet" type="text/css" href="css/SignUp.css">
            <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

            <!--===============================================================================================-->
        </head>

        <body>
            <div class="limiter">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">Sign up</h2>
                            <form method="POST" class="register-form" id="register-form">

                                <div class="form-group">
                                    <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="name" id="name" placeholder="Your Name" />
                                </div>

                                <div class="form-group">
                                    <label for="email"><i class="zmdi zmdi-email"></i></label>
                                    <input type="email" name="email" id="email" placeholder="Your Email" />
                                </div>

                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="password" name="pass" id="pass" placeholder="Password" />
                                </div>

                                <div class="form-group">
                                    <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="password" name="re_pass" id="re_pass"
                                        placeholder="Repeat your password" />
                                </div>

                                 <div class="input_field radio_option">
                                    <p>Are your a Student or a Teacher?</p>
                                    <input type="radio" name="radiogroup1" id="rd1">
                                    <label for="rd1">Student</label>
                                    <input type="radio" name="radiogroup1" id="rd2">
                                    <label for="rd2">Teacher</label>
                                </div> 

                                <div class="form-group">
                                    <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                    <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree
                                        all statements in <a href="#" class="term-service">Terms of service</a></label>
                                </div>

                                <div class="form-group form-button">
                                    <input type="submit" name="signup" id="signup" class="form-submit"
                                        value="Register" />
                                </div>

                            </form>
                        </div>
                        <div class="signup-image">
                            <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                            <a href="Login.jsp" class="signup-image-link">I am already member</a>
                        </div>
                    </div>
                </div>
            </div>
        </body>

        </html>