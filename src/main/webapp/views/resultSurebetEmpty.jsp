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
            <form action = "calculateSurebetResult">
                <h4>In this section you can check if odds provided by different bookmakers let you take a potentially risk free bet.</h4>
                <p>Most bookies offer similar odds on the same outcome, and their margin prevents players from taking the arbitrage bets.</p>
                <p>Luckily for us, sometimes rapid line movements allow players to take the advantage of it</p><br>
                <p>Enter the amount of money you want to risk:</p>
                <input type = "number" class = "numberMoney" name = "money" min = "1" max = "100000" step = "0.01" required></br><br>
                <p>Enter the odds of the first outcome:</p>
                <input type = "number" class = "numberProb" name = "userInputSurebet1" min = "1.01" max = "1000" step = "0.01" required></br><br>
                <p>Enter the odds of the second outcome:</p>
                <input type = "number" class = "numberProb" name = "userInputSurebet2" min = "1.01" max = "1000" step = "0.01" required></br>
                <button>Calculate</button><br><br>
            </form>
    </main>
        <div w3-include-html="footer.html"></div>
        <script src="js/script.js"></script>
        <script src="js/scriptMoney.js"></script>
        <script src="js/scriptProbabilityForm.js"></script>
        <script>includeHTML();</script>
</body>
</html>
