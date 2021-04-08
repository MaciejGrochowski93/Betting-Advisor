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
                        <form action = "calculateSurebetResult">
                            <h4>Enter the amount of money you want to risk:</h4>
                            <input type = "text" name = "money"></br><br>
                            <h4>Enter the odds of the first outcome:</h4>
                            <input type = "text" name = "userInputSurebet1"></br><br>
                            <h4>Enter the odds of the second outcome:</h4>
                            <input type = "text" name = "userInputSurebet2"></br>
                            <input type = "submit"><br><br>
                        </form>

    </main>
    <div w3-include-html="footer.html"></div>
   <script src="js/script.js"></script>
   <script>includeHTML();</script>
</body>
</html>