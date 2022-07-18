import 'dart:developer';

import 'package:flutter/material.dart';

class FlutterDicas4 extends StatefulWidget {
  const FlutterDicas4({Key? key}) : super(key: key);

  @override
  State<FlutterDicas4> createState() => _FlutterDicas4State();
}

class _FlutterDicas4State extends State<FlutterDicas4> {
  @override
  void initState() {
    const _flutterDicasStringLonga =
        'Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, ';
    log(_flutterDicasStringLonga);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _images = List.generate(
      10,
      (int index) => Image.asset(
        './assets/images/logo.png',
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dicas 4'),
      ),
      body: Container(),
    );
  }
}
