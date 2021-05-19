<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
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
                <h4>In this place you can calculate what odds reflect your estimated probability.</h4>
                <p>The smaller are the calculated, and bigger are the real odds, the more favourable the actual bet is.</p> <br>
                <p>Enter your percentage probability here (just a number):</p>
                <input type = "number" class = "numberOdds" name = "userInputPercent" min = "1" max = "99" step = "0.01" required><br>
                <button>Calculate</button><br><br>
            </form>
                <p>Odds appropriate to probability given by you equal to: ${calculator2}.</p>
    </main>
        <div w3-include-html="footer.html"></div>
        <script src="js/script.js"></script>
        <script src="js/scriptOddsForm.js"></script>
        <script>includeHTML();</script>
</body>
</html>
