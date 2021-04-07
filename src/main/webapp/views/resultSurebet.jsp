<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Betting calculator</title>
<link rel="stylesheet" href="/css/style.css">
<script src="https://kit.fontawesome.com/aef11054b3.js" crossorigin="anonymous"></script>

</head>
<body>
    <div w3-include-html="header.html"></div>
    <div w3-include-html="nav.html"></div>
    <main>
                        <form action = "calculateSurebet">
                            <p>Enter the amount of money you want to risk:</p>
                            <input type = "text" name = "money"></br>
                            <p>Enter the odds of the first outcome:</p>
                            <input type = "text" name = "userInputSurebet1"></br>
                            <p>Enter the odds of the second outcome:</p>
                            <input type = "text" name = "userInputSurebet2"></br>
                            <input type = "submit">
                        </form>
        <p>${calculator4}</p>
    </main>
    <div w3-include-html="footer.html"></div>
   <script src="js/script.js"></script>
   <script>includeHTML();</script>
</body>
</html>