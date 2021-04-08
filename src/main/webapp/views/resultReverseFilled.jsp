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
                    <form action = "reverseOddsResult">
                        <p>Enter the odds you want to bet, and find out what odds you let bookmaker take against you:</p>
                        <input type = "text" name = "userInputReverse"></br>
                        <input type = "submit">
                    </form>
        <p>The reversed odds equal to: ${calculator3}</p>
        <p>Bascially, you consider letting a bookmaker to take a bet at these odds against yourself.</p>
    </main>
    <div w3-include-html="footer.html"></div>
   <script src="js/script.js"></script>
   <script>includeHTML();</script>
</body>
</html>