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
                    <form action = "calculateOddsResult">
                        <h4>Enter your percentage probability here (just number, in example 50):</h4><br>
                        <input type = "text" name = "userInputPercent"><br>
                        <input type = "submit"><br><br>
                    </form>

    </main>
    <div w3-include-html="footer.html"></div>
   <script src="js/script.js"></script>
   <script>includeHTML();</script>
</body>
</html>