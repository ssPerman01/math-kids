import 'package:f_math_kid/model/Calculator.dart';
import 'package:f_math_kid/util/Constants.dart';
import 'package:mobx/mobx.dart';

import 'dart:math';
import 'dart:math' as math;

part 'HomeController.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
 
  String calculator = Constants.MATH_ADDITION;

  @observable
  String answer = '';
  
  @observable
  Calculator currCalculator;

  @observable
  int currQuestion = 0;
  
  @observable
  int numCorrect = 0;

  @observable
  int numInCorrect = 0;

  Random random = Random();

  List arrAnswer = List();

  _HomeController() {
    print('init HomeController');
    createNewCalculator();
  }

  @action
  void createNewCalculator() {
    print('createNewCalculator');
    if (currCalculator != null) {
      currCalculator.validateAnswer();
      if (currCalculator.resultAnswer) {
        numCorrect++;
      } else {
        numInCorrect++;
      }
      arrAnswer.add(currCalculator);
    }
    int num1 = random.nextInt(100);
    int num2 = random.nextInt(100);

    initNewCalculator(num1, num2, calculator);
  }

  @action
  void initNewCalculator(int operator1, int operator2, String calculator) {
    print('initNewCalculator $operator1 $calculator $operator1');
    currCalculator = Calculator(operator1, operator2, calculator);
    answer = '';
    currQuestion++;
  }

  @action
  void putNumberToAnswer(String num) {
      print('putNumberToAnswer $num');
    this.answer = num + answer;
    currCalculator.answer = answer;
  }

  @action
  void deleteLeftNumOfAnswer() {
    if (answer.length > 1) {
      this.answer = answer.substring(1);
    } else {
      this.answer = '';
    }
    currCalculator.answer = answer;
  }
}
