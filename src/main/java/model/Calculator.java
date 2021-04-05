package model;

import org.apache.commons.math3.util.Precision;

public class Calculator {
    private double userInput;
    private double tmpResult;
    private double result;

    public Calculator() {
    }

    public Calculator(double userInput) {
        this.userInput = userInput;
    }

    public double calculateProbability(double actualOdds) throws IncorrectArgument {
        if (actualOdds > 1 && actualOdds < 1000) {
            result = roundTwoDigits(tmpResult = 100 / actualOdds);
        } else
            throw new IncorrectArgument();

        return result;
    }

    public double calculateOdds(double usersPercent) throws IncorrectArgument {
        if (usersPercent > 1 && usersPercent < 99) {
            result = roundTwoDigits(tmpResult = 100 / usersPercent);
        } else
            throw new IncorrectArgument();
        return result;
    }

    public double reverseOdds(double bookmakerOdds) {
        if (bookmakerOdds > 1 && bookmakerOdds < 1000) {
            result = roundTwoDigits((1 / (bookmakerOdds - 1)) + 1);
        }
        return result;
    }

    public double roundTwoDigits(double odds) {
        return Precision.round(odds, 2);
    }
}
