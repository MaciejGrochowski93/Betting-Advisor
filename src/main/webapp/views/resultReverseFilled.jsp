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
            <form action = "reverseOddsResult">
                <h4>This section helps you to realise what happens when you place a bet.</h4>
                <p>In reality both sides, you and the bookmaker place bets at the same time, with opposite odds.</p>
                <p>Check if you are ready to accept the opposite odds.</p><br>
                <p>Enter the odds you want to bet, and find out what odds you potentially let bookmaker take against you:</p>
                <input type = "number" class = "numberProb" name = "userInputReverse" min = "1.01" max = "1000" step = "0.01" required><br>
                <button>Calculate</button><br><br>
            </form>
                <p>The reversed odds equal to: ${calculator3}</p>
                <p>That's the number you consider to let bookmaker bet against yourself.</p>
    </main>
        <div w3-include-html="footer.html"></div>
        <script src="js/script.js"></script>
        <script src="js/scriptProbabilityForm.js"></script>
        <script>includeHTML();</script>
</body>
</html>
