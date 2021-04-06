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
<header>
<div class="header-image">
    <div class="header-text">
        <h1>Betting Advisor</h1>
        <p>Gain the advantage</p>
    </div>
    <div class="header-bg">
    </div>
</div>
</header>
<nav>
<ul>
    <li><a href="">Calculate probability</a></li>
    <li><a href="">Calculate odds</a></li>
    <li><a href="">Reverse odds</a></li>
    <li><a href="">Surebet calculator</a></li>
    <li><a href="">Freebet calculator</a></li>
</ul>
</nav>
<main>
<ul>
    <li>
        <form action = "calculateProb">
        <p>Enter the odds you consider betting:</p>
        <input type = "text" name = "userInputOdds"></br>
        <input type = "submit">
        </form>
    </li>
    <li>
        <form action = "calculateOdds">
            <p>Enter your percentage probability here (just number, in example 50):</p>
            <input type = "text" name = "userInputPercent"></br>
            <input type = "submit">
        </form>
    </li>
    <li>
        <form action = "reverseOdds">
            <p>Enter the odds you want to bet, and find out what odds you let bookmaker take against you:</p>
            <input type = "text" name = "userInputReverse"></br>
            <input type = "submit">
        </form>
    </li>
    <li>
        <form action = "calculateSurebet">
            <p>Enter the amount of money you want to risk:</p>
            <input type = "text" name = "money"></br>
            <p>Enter the odds of the first outcome:</p>
            <input type = "text" name = "userInputSurebet1"></br>
            <p>Enter the odds of the second outcome:</p>
            <input type = "text" name = "userInputSurebet2"></br>
            <input type = "submit">
        </form>
    </li>
</ul>
</main>
<footer>
<p>Lorem ipsum dolor sit amet. 
    <span class="foot-icon">
    <i class="fab fa-linkedin"></i><i class="fab fa-github"></i>
    </span>
</p>
</footer>
</body>
</html>