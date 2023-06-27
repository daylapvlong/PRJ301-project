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
    <form method="post" action="saveques.jsp" >
        <table>
            <tr><td>Question:</td><td><textarea rows="3" cols="" name="question" ></textarea></td></tr>
            <tr><td>Option1:</td><td><input type="text" name="option1" /></td></tr>	
            <tr><td>Option2:</td><td><input type="text" name="option2" /></td></tr>
            <tr><td>Option3:</td><td><input type="text" name="option3" /></td></tr>
            <tr><td>Option4:</td><td><input type="text" name="option4" /></td></tr>
            <tr><td>Answer:</td><td><input type="text" name="answer" /></td></tr>	
            <tr><td>Description:</td><td><input type="text" name="description" /></td></tr>			
            <tr><td></td><td><input type="submit" value="Next"></td></tr>
        </table>
    </form>
</body>
</html>