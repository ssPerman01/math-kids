import 'package:f_math_kid/util/Constants.dart';

class Calculator{
    
    
    int operator1;
    
    int operator2;
    
    String calculator;
    
    String answer = '';
    
    String resultCorrect;

    bool resultAnswer;
    
    Calculator(this.operator1, this.operator2, this.calculator){
        calculatorResult();
        answer = '';
    }
    
    void calculatorResult() {
        switch(calculator){
            case Constants.MATH_ADDITION:
                resultCorrect = (operator1 + operator2).toString();
                break;
            case Constants.MATH_SUB:
                resultCorrect = (operator1 - operator2).toString();
                break;
            case Constants.MATH_MULTI:
                resultCorrect = (operator1 * operator2).toString();
                break;
        }
    }
    
    void validateAnswer() {
        resultAnswer = resultCorrect.endsWith(answer);
    }
}