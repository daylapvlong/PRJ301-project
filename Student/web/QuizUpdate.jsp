<%-- Document : Quiz Created on : Jun 13, 2023, 1:11:04 PM Author : admin's --%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
                <link href="css/QuizUpdate.css" rel="stylesheet" />
                <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
                <script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
            </head>

            <body>
                <div class="close-container" id="closeButton" onclick="history.back()">
                    <div class="leftright"></div>
                    <div class="rightleft"></div>
                </div>
                <div id="display-container">
                    <form action="" method="post">
                        <div class="header">
                            <div class="number-of-count">
                                <span class="number-of-question">Question 1</span>
                            </div>
                            <div class="timer-div">
                                <p>time:</p>
                                <input name="time" type="time" class="time-left">
                            </div>
                        </div>
                        <div id="container">

                            <div class="container-mid">
                                <input class="option-div" name="question" value="What is my girlfriend's name?">
                                <div class="formAnswer">
                                    <input class="option-div" name="answer" value="Nga">
                                    <input class="radio" type="radio" name="radio" name="isCorrect">
                                </div>

                                <div class="formAnswer">
                                    <input class="option-div" name="answer" value="Long">
                                    <input class="radio" type="radio" name="radio" name="isCorrect">
                                </div>

                                <div class="formAnswer">
                                    <input class="option-div" name="answer" value="Ryan Renolds">
                                    <input class="radio" type="radio" name="radio" name="isCorrect">
                                </div>
                            </div>

                        </div>
                        <div class="button-container">
                            <button class="update-button">Update</button>
                            <a href="#" class="update-button">Delete</a>
                        </div>
                    </form>
                </div>
            </body>

            <script src="js/quizUpdate.js"></script>

            </html>