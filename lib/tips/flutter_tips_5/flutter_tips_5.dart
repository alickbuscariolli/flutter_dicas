import 'package:flutter/material.dart';

class FlutterTips5 extends StatefulWidget {
  const FlutterTips5({Key? key}) : super(key: key);

  @override
  State<FlutterTips5> createState() => _FlutterTips5State();
}

class _FlutterTips5State extends State<FlutterTips5> {
  final list = List.generate(
    10000,
    (index) => ListTile(
      title: Text('Flutter Tips 5 - Item $index'),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tips 5'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: list,
        ),
      ),
    );
  }
}
