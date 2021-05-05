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
            <form action = "calculateProbResult">
                <h4>In this place you can calculate probability of success implied by bookmaker's odds.</h4>
                <p>The larger the gap between where you estimate the probability, and the probability offered by the bookmaker, the better the bet is.</p> <br>
                <p>Enter the odds you consider betting:</p>
                <input type = "number" name = "userInputOdds2" min = "1.01" max = "1000" step = "0.001" required><br>
                <button>Calculate</button><br><br>
            </form>
                <p>The implied probability is: ${calculator}%.</p><br>
    </main>
        <div w3-include-html="footer.html"></div>
        <script src="js/script.js"></script>
        <script>includeHTML();</script>
</body>
</html>