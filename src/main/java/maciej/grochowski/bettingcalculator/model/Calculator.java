package maciej.grochowski.bettingcalculator.model;

import org.apache.commons.math3.util.Precision;

public class Calculator {
    private double tmpResult;
    private double result;
    private String message;
    public static final String ANSI_RED = "\u001B[31m";

    public Calculator() {
    }

    public String calculateProbability(double actualOdds) {
//        if (isOddsCorrect(actualOdds))
        {
            result = roundTwoDigits(tmpResult = 100 / actualOdds);
            message = String.valueOf(result);
        }
        return message;
    }

    public String calculateOdds(double usersPercent) {
//        if (usersPercent > 1 && usersPercent < 99) {
            result = roundTwoDigits(tmpResult = 100 / usersPercent);
            message = String.valueOf(result);
//        }
        return message;
    }

    public String reverseOdds(double bookmakerOdds) {
//        if (isOddsCorrect(bookmakerOdds))
        {
            result = roundTwoDigits((1 / (bookmakerOdds - 1)) + 1);
            message = String.valueOf(result);
        }
//        else
//            message = "Please, insert number between 1.001 and 1000.";
        return message;
    }

    public String calculateSurebet(double money, double odds1, double odds2) {
//        String message;
        if (isSurebet(odds1, odds2)) {
            double multiplier = calculateSurebetMultiplier(odds1, odds2);
            double moneyToBetOnOdds1 = (money * multiplier) / odds1;
            double moneyToBetOnOdds2 = (money * multiplier) / odds2;
            message = "In order to create a " + roundTwoDigits(multiplier * 100) + "% surebet from odds: " + odds1 + ", " + odds2 + ", and total money of "
                    + money + ", you should bet " + roundTwoDigits(moneyToBetOnOdds1) + " at odds " + odds1 + ", and " + roundTwoDigits(moneyToBetOnOdds2) +
                    " at odds " + odds2 + ". Your return should equal: " + roundTwoDigits(money * multiplier) + ", with the gross profit of "
                    + roundTwoDigits(money * (multiplier - 1)) + ".";
        } else {
            message = "There is no surebet from odds " + odds1 + ", and " + odds2 + ".";
        }
        return message;
    }

    public double calculateSurebetMultiplier(double odds1, double odds2) {
        if (
//                isOddsCorrect(odds1) && isOddsCorrect(odds2) &&
                        isSurebet(odds1, odds2)) {
            result = (odds1 * odds2) / (odds1 + odds2);
        }
        return result;
    }

//    public boolean isOddsCorrect(double odds) {
//        if (odds > 1 && odds < 1000)
//            return true;
//        return false;
//    }

    public boolean isSurebet(double odds1, double odds2) {
//        if (isOddsCorrect(odds1) && isOddsCorrect(odds2))
        {
            if ((odds1 - 1) * (odds2 - 1) > 1) {
                return true;
            }
        }
        return false;
    }

    public double roundTwoDigits(double odds) {
        return Precision.round(odds, 2);
    }
}
