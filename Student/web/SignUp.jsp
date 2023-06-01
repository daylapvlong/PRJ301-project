<%-- 
    Document   : SignUp
    Created on : Jun 1, 2023, 10:10:10 AM
    Author     : admin's
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Page</title>
        
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/SignUp.css">
<!--===============================================================================================-->
    </head>
    <body>
        <div class="form_wrapper">
            <div class="form_container">
                <div class="title_container">
                    <h2>Responsive Registration Form</h2>
                </div>
                <div class="row clearfix">
                    <div class="">
                        <form>
                            <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
                                <input type="email" name="email" placeholder="Email" required />
                            </div>
                            <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
                                <input type="password" name="password" placeholder="Password" required />
                            </div>
                            <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
                                <input type="password" name="password" placeholder="Re-type Password" required />
                            </div>
                            <div class="row clearfix">
                                <div class="col_half">
                                    <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
                                        <input type="text" name="name" placeholder="First Name" />
                                    </div>
                                </div>
                                <div class="col_half">
                                    <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
                                        <input type="text" name="name" placeholder="Last Name" required />
                                    </div>
                                </div>
                            </div>
                            <div class="input_field radio_option">
                                <input type="radio" name="radiogroup1" id="rd1">
                                <label for="rd1">Male</label>
                                <input type="radio" name="radiogroup1" id="rd2">
                                <label for="rd2">Female</label>
                            </div>
                            <div class="input_field select_option">
                                <select>
                                    <option>Select a country</option>
                                    <option>Option 1</option>
                                    <option>Option 2</option>
                                </select>
                                <div class="select_arrow"></div>
                            </div>
                            <input class="login100-form-btn" type="submit" value="Register" />
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
