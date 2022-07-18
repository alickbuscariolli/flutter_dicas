import 'package:flutter/material.dart';
import 'package:flutterdicas/dicas/flutter_dicas_3/flutter_dicas_3_next_page.dart';

class FlutterDicas3 extends StatelessWidget {
  const FlutterDicas3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dicas 3'),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const FlutterDicas3NextPage(),
            ),
          ),
          child: Hero(
            tag: 'flutterDicas3',
            child: Image.asset(
              './assets/images/logo.png',
            ),
          ),
        ),
      ),
    );
  }
}
