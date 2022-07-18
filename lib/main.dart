import 'package:flutter/material.dart';
import 'package:flutterdicas/dicas/flutter_dicas_11/flutter_dicas_11.dart';

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
            primaryVariant: Colors.blue,
            secondaryVariant: Colors.black,
            surface: Colors.blue,
          )),
      home: const FlutterDicas11(),
    );
  }
}
