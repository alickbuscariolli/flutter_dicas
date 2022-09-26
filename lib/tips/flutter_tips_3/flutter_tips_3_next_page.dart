import 'package:flutter/material.dart';

class FlutterTips3NextPage extends StatelessWidget {
  const FlutterTips3NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Flutter Tips 3 - next page'),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Hero(
            tag: 'flutterTips3',
            child: Image.asset(
              './assets/images/flutter_tips_logo.png',
            ),
          ),
        ),
      ),
    );
  }
}
