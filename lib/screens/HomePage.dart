import 'dart:math' as math;

import 'package:f_math_kid/screens/HomeController.dart';
import 'package:f_math_kid/util/ConstUi.dart';
import 'package:f_math_kid/widgets/Numpad.dart';
import 'package:f_math_kid/widgets/VerticalCalculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String numShow = '';

  HomeController _store;

  TeXViewRenderingEngine renderingEngine = const TeXViewRenderingEngine.katex();

  static TeXViewWidget quadraticEquation = _teXViewWidget(r"<h4>Quadratic Equation</h4>", r"""
     When \(ab \ne 0 \), there are two solutions to \(ax^2 + bx + c = 0\) and they are
     $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$<br>
     $$\begin{array}{r}2789 \\ \times3476 \\ \hline 1234123   \end{array}$$
     \(\begin{array}{r}2789 \\ \times3476 \\ \hline 1234123   \end{array}\)
     """);

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('--didChangeDependencies-->');
    if (_store == null) {
      _store = Provider.of(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    print('---build HomePage--->');
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: ConstUI.paddingX2,
          ),
          //bar: num: quest, correct, incorrect
          buildTopBar(),
          // calculator
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                VerticalCalculator(),
              ],
            ),
          ),
          // num pad
          buildNumPad(),
          // margin bottom
          const SizedBox(
            height: ConstUI.paddingX2,
          )
        ],
      ),
    );
  }


  Widget buildTopBar() {
      return Row(
          children: <Widget>[
              SizedBox(
                  width: ConstUI.padding,
              ),
              // question
              Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(ConstUI.itemRadius)), border: Border.all(color: Colors.orange)),
                  padding: const EdgeInsets.all(ConstUI.padding),
                  child: Row(
                      children: <Widget>[
                          Text(
                              'Quest:',
                              style: TextStyle(fontSize: ConstUI.text_size_normal),
                          ),
                          Observer(
                              builder: (_) => Text(
                                  _store.currQuestion.toString(),
                                  style: TextStyle(fontSize: ConstUI.text_size_huge_x),
                              ),
                          )
                      ],
                  ),
              ),
              Expanded(
                  child: Text(''),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(ConstUI.itemRadius)), border: Border.all(color: Colors.green)),
                  padding: const EdgeInsets.all(ConstUI.padding),
                  child: Row(
                      children: <Widget>[
                          Observer(
                              builder: (_) => Text(
                                  _store.numCorrect.toString(),
                                  style: TextStyle(color: Colors.green, fontSize: ConstUI.text_size_huge_x),
                              ),
                          ),
                          Icon(
                              Icons.check,
                              color: Colors.green,
                          )
                      ],
                  ),
              ),
              SizedBox(
                  width: ConstUI.padding,
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(ConstUI.itemRadius)), border: Border.all(color: Colors.red)),
                  padding: const EdgeInsets.all(ConstUI.padding),
                  child: Row(
                      children: <Widget>[
                          Observer(
                              builder: (_) => Text(
                                  _store.numInCorrect.toString(),
                                  style: TextStyle(color: Colors.red, fontSize: ConstUI.text_size_huge_x),
                              ),
                          ),
                          Icon(
                              Icons.close,
                              color: Colors.red,
                          )
                      ],
                  ),
              ),
              SizedBox(
                  width: ConstUI.padding,
              ),
          ],
      );
  }
  
  Widget buildNumPad() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildNumpadButton('0'),
            buildNumpadButton('1'),
            buildNumpadButton('2'),
            buildNumpadButton('3'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildNumpadButton('4'),
            buildNumpadButton('5'),
            buildNumpadButton('6'),
            buildNumpadButton('7'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildNumpadButton('8'),
            buildNumpadButton('9'),
            Transform.rotate(
              angle: math.pi,
              child: NumpadButton(
                icon: Icons.backspace,
                //              icon: Icons.backspace,
                onPressed: () => onClickBackspace(),
              ),
            ),
            NumpadButton(
              icon: Icons.arrow_forward,
              onPressed: () => onClickNext(),
            ),
          ],
        ),
      ],
    );
  }

  NumpadButton buildNumpadButton(String value) {
    return NumpadButton(
      text: value,
      onPressed: () => setValue(value),
    );
  }

  static TeXViewWidget _teXViewWidget(String title, String body) {
    return TeXViewColumn(
        style: TeXViewStyle(
            margin: TeXViewMargin.all(10),
            padding: TeXViewPadding.all(10),
            borderRadius: TeXViewBorderRadius.all(10),
            border: TeXViewBorder.all(
                TeXViewBorderDecoration(borderWidth: 2, borderStyle: TeXViewBorderStyle.Groove, borderColor: Colors.green))),
        children: [
          TeXViewDocument(title,
              style: TeXViewStyle(
                  padding: TeXViewPadding.all(10),
                  borderRadius: TeXViewBorderRadius.all(10),
                  textAlign: TeXViewTextAlign.Center,
                  width: 250,
                  margin: TeXViewMargin.zeroAuto(),
                  backgroundColor: Colors.green)),
          TeXViewDocument(body, style: TeXViewStyle(margin: TeXViewMargin.only(top: 10)))
        ]);
  }

  onClickBackspace() {
    _store.deleteLeftNumOfAnswer();
  }

  onClickNext() {
    _store.createNewCalculator();
  }

  setValue(String s) {
    _store.putNumberToAnswer(s);
  }

}
