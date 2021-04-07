<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Betting calculator</title>
<link rel="stylesheet" href="/style.css">
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
            <li><a href="">Home</a></li>
            <li><a href="">Calculate probability</a></li>
            <li><a href="">Calculate odds</a></li>
            <li><a href="">Reverse odds</a></li>
            <li><a href="">Surebet calculator</a></li>
            <li><a href="">Freebet calculator</a></li>
        </ul>
    </nav>
    <main>
        <h2>What is the Betting Advisor?</h2> 
        <p>In order to achieve success you need to catch every single opportunity that gives you advantage.</p>
        <p>Betting is nothing else than mathemetical calculation, and the sooner you understand it, the better your results will be.
            No matter if you're betting for years, or you're a new customer, the knowledge included inside the device will help you to make the correct decision.</p>
        
        <h3>Calculate Probability</h3> 
        <p>Just like in real life, everything in betting is possible, every player can score a goal, every team can lose the match. The question is, how probable is the result? If you want to make a good bet, you should think what are the real chances of your favorite and compare them with probability implied by the betting odds. If the probability implied by bookmaker's odds is higher than your own probability, perhaps you should just avoid betting on the match.</p>
    
        <h3>Calculate Odds</h3>
        <p>Let's think about similar, but a bit different situation. You haven't seen the odds yet, but you know how many percent chances to win your favorite got. 
            Let's calculate the odds that reflect your probability, and compare them with the actual odds. If someone offers better odds, it could be worth to consider taking your chances. </p>
    
        <h3>Reverse Odds</h3>
        <p> Every time you place a bet, you let someone else place a bet against you - both sides take the risk, only one will win. If you bet $10 at odds 2.00, you risk $10 to win $10. In reality, you let bookmaker place an opposite bet against you. You obviously know what odds you are placing, but it's good to know what odds you are accepting against yourself.
        Just type the odds you consider placing, convert them and see if you're comfortable to accept the opposite bet against yourself.            
        </p>
    
        <h3>Surebet Calculator</h3>
        <p>Most of the times, all the bookmakers offer very similar odds. The reason behind that is if the differences in odds would be significant, the smart players could just place a bet in bookie X, opposite bet in bookie Y, and eventually end up with a profit. In theory that's impossible... But sometimes bookmakers have some delay in updates of their offer. 
            The Surebet Calculator will check if you can potentially take a risk-free bet out of the given odds, and tell you how to spread the money you want to place.
        </p>
    
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