import 'package:flutter/material.dart';

import 'flutter_tips_3_next_page.dart';

class FlutterTips3 extends StatelessWidget {
  const FlutterTips3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tips 3'),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const FlutterTips3NextPage(),
            ),
          ),
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
