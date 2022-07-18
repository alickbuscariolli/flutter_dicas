import 'package:flutter/material.dart';

class FlutterDicas3NextPage extends StatelessWidget {
  const FlutterDicas3NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Flutter Dicas 3 - pagina seguinte'),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
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
