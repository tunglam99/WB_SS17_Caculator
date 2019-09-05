package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Calculator {
    public final String ADD = "Add(+)";
    public final String SUB = "Sub(-)";
    public final String MUL = "Mul(*)";
    public final String DIV = "Div(/)";
    @RequestMapping("calculate")
    public String calculate(@RequestParam("number1") String number1, @RequestParam("number2") String number2, @RequestParam("operator") String operator, Model model){
        model.addAttribute("number1", number1);
        model.addAttribute("number2", number2);
        int num1 = Integer.parseInt(number1);
        int num2 = Integer.parseInt(number2);
        float result;
        switch (operator){
            case ADD:{
                result = num1+num2;
                model.addAttribute("message", "Result Addition: "+ result);
                break;
            }
            case SUB:{
                result = num1-num2;
                model.addAttribute("message", "Result Subtraction: "+ result);
                break;
            }
            case MUL:{
                result = num1*num2;
                model.addAttribute("message", "Result Multiplication: "+ result);
                break;
            }
            case DIV:{
                if (num2==0){
                    model.addAttribute("message", "Div by zero");
                } else {
                    result = num1/num2;
                    model.addAttribute("message", "Result Division: "+ result);
                    break;
                }
            }
        }
        return "index";
    }

}
