import 'package:flutter/material.dart';

class FlutterTips4 extends StatefulWidget {
  const FlutterTips4({Key? key}) : super(key: key);

  @override
  State<FlutterTips4> createState() => _FlutterTips4State();
}

class _FlutterTips4State extends State<FlutterTips4> {
  @override
  void initState() {
    const _flutterTipsLongString =
        'Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, Flutter Tips, ';
    print(_flutterTipsLongString);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tips 4'),
      ),
      body: Container(),
    );
  }
}
