import 'package:f_math_kid/screens/HomeController.dart';
import 'package:f_math_kid/screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'FlutterTeXExample.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => HomeController(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
//      home: FlutterTeXExample(),
        home: HomePage(),
      ),
    );
  }
}
