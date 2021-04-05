package maciej.grochowski.bettingcalculator;

import model.Calculator;
import model.IncorrectArgument;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "index";
    }


    Calculator calc = new Calculator();
    @RequestMapping("calculateProb")
    public String calculateProb(@RequestParam("userInputOdds") double userInputOdds, Model m) {
        try {
            m.addAttribute("calculator", calc.calculateProbability(userInputOdds));
        } catch(IncorrectArgument e){
            System.err.println("Please, insert number between 1 and 1000");
        }
        return "result";
    }

    @RequestMapping("calculateOdds")
    public String calculateOdds(@RequestParam("userInputPercent") double userInputPercent, Model m){
        try{
        m.addAttribute("calculator2", calc.calculateOdds(userInputPercent));
        } catch(IncorrectArgument e){
            System.err.println("Please, insert number between 1 and 100");
        }
        return "result";
    }

    @RequestMapping("reverseOdds")
    public String reverseOdds(@RequestParam("userInputReverse") double userInputReverse, Model m){
        m.addAttribute("calculator3", calc.reverseOdds(userInputReverse));
        return "result";
    }
}