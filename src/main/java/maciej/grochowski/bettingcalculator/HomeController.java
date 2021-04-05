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

//    @RequestMapping("calculate")
//    public String calculate(@RequestParam("userOdds") double userOdds, Model m) {
//        String impProbability = String.valueOf(calculator.calculateProbability(userOdds));
//        m.addAttribute("impProbability", impProbability);
//        return "result";
//    }

    @RequestMapping("calculateProb")
    public String calculateProb(@RequestParam("userInputOdds") double userInputOdds, Model m) {
        Calculator calc = new Calculator();
        try {
            m.addAttribute("calculator", calc.calculateProbability(userInputOdds));
        } catch(IncorrectArgument e){
            System.err.println("Please, insert number between 1 and 1000");
        }
        return "result";
    }

    @RequestMapping("calculateOdds")
    public String calculateOdds(@RequestParam("userInputPercent") double userInputPercent, Model m){
        Calculator calc = new Calculator();
        calc.calculateOdds(userInputPercent);
        m.addAttribute("calculator2", calc.calculateOdds(userInputPercent));
        return "result";
    }
}