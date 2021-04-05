package model;

import org.apache.commons.math3.util.Precision;

import java.math.BigDecimal;

public class Calculator {
    private double userInput;
    private double tmpResult;
    private double result;

    public Calculator() {
    }

    public Calculator(double userInput) {
        this.userInput = userInput;
    }

    public double calculateProbability(double odds) throws IncorrectArgument {
            if (odds > 1 && odds < 1000) {
                tmpResult = 100 / odds;
                result = Precision.round(tmpResult, 2);
            }
            else
                throw new IncorrectArgument();

        return result;
    }

    public double calculateOdds(double userInputPercent) {
        if (userInputPercent > 1 && userInputPercent < 99) {
            tmpResult = 100 / userInputPercent;
            result = Precision.round(tmpResult, 2);
        }
        return result;
    }

}
