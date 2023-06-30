<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Create Quiz</title>
        </head>

        <body>
            <div class="createContainer">
                <form method="post" action="">
                    <div id="createTable">
                        <div>
                            <label for="question">Question:</label>
                            <input type="text" name="question"></textarea>
                        </div>
                        <div id="createAnswer">
                            <label for="option">Option:</label>
                            <input type="text" name="option" />
                            <input type="radio" name="isCorrect">
                        </div>
                        <button type="button" class="btn-copy" onclick="duplicateAnswer()">New Answer</button>
                    </div>
                    
                    <button type="button" class="btn-copy" onclick="duplicateQuestion()">New Question</button>
                    <button type="submit">Create Quiz</button>
                </form>
            </div>
            
            <script>
                function duplicateQuestion() {
                    const node = document.getElementById("createTable");
                    const clone = node.cloneNode(true);
                    document.getElementById("createTable").appendChild(clone);
                }

                function duplicateAnswer() {
                    const node = document.getElementById("createAnswer");
                    const clone = node.cloneNode(true);
                    document.getElementById("createAnswer").appendChild(clone);
                }
            </script>

            <!-- <script src="js/create.js"></script> -->


        </body>

        </html>