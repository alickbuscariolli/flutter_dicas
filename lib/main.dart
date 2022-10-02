import 'package:flutter/material.dart';
import 'package:flutterdicas/dicas/flutter_dicas_2/flutter_dicas_2.dart';
import 'package:flutterdicas/tips/flutter_tips_2/flutter_tips_2.dart';
import 'package:flutterdicas/tips/flutter_tips_3/flutter_tips_3.dart';
import 'package:flutterdicas/tips/flutter_tips_4/flutter_tips_4.dart';
import 'package:flutterdicas/tips/flutter_tips_5/flutter_tips_5.dart';
import 'package:flutterdicas/tips/flutter_tips_6/flutter_dicas_6.dart';

import 'dicas/flutter_dicas_3/flutter_dicas_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: const ColorScheme(
          primary: Colors.blue,
          secondary: Colors.black,
          background: Colors.blue,
          brightness: Brightness.light,
          error: Colors.blue,
          onBackground: Colors.blue,
          onError: Colors.blue,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.blue,
          primaryContainer: Colors.blue,
          secondaryContainer: Colors.black,
          surface: Colors.blue,
        ),
      ),
      home: const FlutterTips6(),
    );
  }
}
