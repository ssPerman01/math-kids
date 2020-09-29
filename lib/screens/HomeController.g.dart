// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  final _$answerAtom = Atom(name: '_HomeController.answer');

  @override
  String get answer {
    _$answerAtom.context.enforceReadPolicy(_$answerAtom);
    _$answerAtom.reportObserved();
    return super.answer;
  }

  @override
  set answer(String value) {
    _$answerAtom.context.conditionallyRunInAction(() {
      super.answer = value;
      _$answerAtom.reportChanged();
    }, _$answerAtom, name: '${_$answerAtom.name}_set');
  }

  final _$currCalculatorAtom = Atom(name: '_HomeController.currCalculator');

  @override
  Calculator get currCalculator {
    _$currCalculatorAtom.context.enforceReadPolicy(_$currCalculatorAtom);
    _$currCalculatorAtom.reportObserved();
    return super.currCalculator;
  }

  @override
  set currCalculator(Calculator value) {
    _$currCalculatorAtom.context.conditionallyRunInAction(() {
      super.currCalculator = value;
      _$currCalculatorAtom.reportChanged();
    }, _$currCalculatorAtom, name: '${_$currCalculatorAtom.name}_set');
  }

  final _$currQuestionAtom = Atom(name: '_HomeController.currQuestion');

  @override
  int get currQuestion {
    _$currQuestionAtom.context.enforceReadPolicy(_$currQuestionAtom);
    _$currQuestionAtom.reportObserved();
    return super.currQuestion;
  }

  @override
  set currQuestion(int value) {
    _$currQuestionAtom.context.conditionallyRunInAction(() {
      super.currQuestion = value;
      _$currQuestionAtom.reportChanged();
    }, _$currQuestionAtom, name: '${_$currQuestionAtom.name}_set');
  }

  final _$numCorrectAtom = Atom(name: '_HomeController.numCorrect');

  @override
  int get numCorrect {
    _$numCorrectAtom.context.enforceReadPolicy(_$numCorrectAtom);
    _$numCorrectAtom.reportObserved();
    return super.numCorrect;
  }

  @override
  set numCorrect(int value) {
    _$numCorrectAtom.context.conditionallyRunInAction(() {
      super.numCorrect = value;
      _$numCorrectAtom.reportChanged();
    }, _$numCorrectAtom, name: '${_$numCorrectAtom.name}_set');
  }

  final _$numInCorrectAtom = Atom(name: '_HomeController.numInCorrect');

  @override
  int get numInCorrect {
    _$numInCorrectAtom.context.enforceReadPolicy(_$numInCorrectAtom);
    _$numInCorrectAtom.reportObserved();
    return super.numInCorrect;
  }

  @override
  set numInCorrect(int value) {
    _$numInCorrectAtom.context.conditionallyRunInAction(() {
      super.numInCorrect = value;
      _$numInCorrectAtom.reportChanged();
    }, _$numInCorrectAtom, name: '${_$numInCorrectAtom.name}_set');
  }

  final _$_HomeControllerActionController =
      ActionController(name: '_HomeController');

  @override
  void createNewCalculator() {
    final _$actionInfo = _$_HomeControllerActionController.startAction();
    try {
      return super.createNewCalculator();
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initNewCalculator(int operator1, int operator2, String calculator) {
    final _$actionInfo = _$_HomeControllerActionController.startAction();
    try {
      return super.initNewCalculator(operator1, operator2, calculator);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void putNumberToAnswer(String num) {
    final _$actionInfo = _$_HomeControllerActionController.startAction();
    try {
      return super.putNumberToAnswer(num);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteLeftNumOfAnswer() {
    final _$actionInfo = _$_HomeControllerActionController.startAction();
    try {
      return super.deleteLeftNumOfAnswer();
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }
}
