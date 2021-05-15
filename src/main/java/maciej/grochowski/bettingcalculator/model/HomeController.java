package maciej.grochowski.bettingcalculator.model;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    private Calculator calc = new Calculator();

    @RequestMapping("/")
    public String home() {
        return "index";
    }

    @RequestMapping("/calculateProb")
    public String calculateProb() {
        return "resultProbEmpty";
    }

    @RequestMapping("/calculateProbResult")
    public String calculateProbResult(@RequestParam("userInputOdds") double userInputOdds, Model m) {
        m.addAttribute("calculator", calc.calculateProbability(userInputOdds));
        return "resultProbFilled";
    }

    @RequestMapping("/calculateOdds")
    public String calculateOdds() {
        return "resultOddsEmpty";
    }

    @RequestMapping("/calculateOddsResult")
    public String calculateOddsResult(@RequestParam("userInputPercent") double userInputPercent, Model m) {
        m.addAttribute("calculator2", calc.calculateOdds(userInputPercent));
        return "resultOddsFilled";
    }

    @RequestMapping("/reverseOdds")
    public String reverseOdds() {
        return "resultReverseEmpty";
    }

    @RequestMapping("/reverseOddsResult")
    public String reverseOddsResult(@RequestParam("userInputReverse") double userInputReverse, Model m) {
        m.addAttribute("calculator3", calc.reverseOdds(userInputReverse));
        return "resultReverseFilled";
    }

    @RequestMapping("/calculateSurebet")
    public String calculateSurebet() {
        return "resultSurebetEmpty";
    }

    @RequestMapping("/calculateSurebetResult")
    public String calculateSurebet(@RequestParam("money") double money, @RequestParam("userInputSurebet1") double userInputSurebet1,
                                   @RequestParam("userInputSurebet2") double userInputSurebet2, Model m) {
        m.addAttribute("calculator4", calc.calculateSurebet(money, userInputSurebet1, userInputSurebet2));
        return "resultSurebetFilled";
    }
}