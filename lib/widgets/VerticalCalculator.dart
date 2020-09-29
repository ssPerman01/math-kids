import 'package:f_math_kid/screens/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class VerticalCalculator extends StatefulWidget {
//  int operator1;
//  int operator2;
//  String calculator;

  VerticalCalculator();

//  VerticalCalculator(this.operator1, this.operator2, this.calculator);

  @override
  _VerticalCalculatorState createState() => _VerticalCalculatorState();
//  _VerticalCalculatorState createState() => _VerticalCalculatorState(this.operator1, this.operator2, this.calculator);

}

class _VerticalCalculatorState extends State<VerticalCalculator> {
//  int operator1;
//  int operator2;
//  String calculator;

  _VerticalCalculatorState();

//  _VerticalCalculatorState(this.operator1, this.operator2, this.calculator);

//  _VerticalCalculatorState(int operator1, int operator2, String calculator);

  HomeController _store;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    if (_store == null) {
      _store = Provider.of(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(_store.currCalculator.calculator),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Observer(builder: (_) => Text(_store.currCalculator.operator1.toString())),
//            Text(operator1.toString()),
            Observer(
                builder: (_) => Text(
                      _store.currCalculator.operator2.toString(),
//              operator2.toString(),
                      textAlign: TextAlign.right,
                    )),
            Container(
                width: 90.0,
                child: Divider(
                  height: 5.0,
                  color: Colors.blue,
                  thickness: 5.0,
                )),
            Container(
              child: Observer(
                builder: (_) => Text(
                  _store.answer,
                  textAlign: TextAlign.right,
                ),
              ),
            )
          ],
        )
      ],
    );
  }

//  @override
//  Widget build(BuildContext context) {
//    return Container(
//        color: Colors.orange,
//      child: Column(
//        children: <Widget>[
//          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text(calculator),
//              Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                textDirection: TextDirection.rtl,
//                children: <Widget>[
//                  Text(operator1.toString()),
//                  Text(
//                    operator2.toString(),
//                    textAlign: TextAlign.right,
//                  ),
//                ],
//              ),
//              const Text(' ')
//            ],
//          ),
//          Container(
//              width: 100.0,
//              child: Divider(
//                height: 5.0,
//                color: Colors.blue,
//                thickness: 5.0,
//              )),
//            Container(
//                child: Observer(
//                    builder: (_) => Text(
//                        _store.resultInput,
//                        textAlign: TextAlign.right,
//                    ),
//                ),
//            )
//        ],
//      ),
//    );
//  }
}
