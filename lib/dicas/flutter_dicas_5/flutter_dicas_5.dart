import 'dart:developer';

import 'package:flutter/material.dart';

class FlutterDicas5 extends StatefulWidget {
  const FlutterDicas5({Key? key}) : super(key: key);

  @override
  State<FlutterDicas5> createState() => _FlutterDicas5State();
}

class _FlutterDicas5State extends State<FlutterDicas5> {
  final lista = List.generate(
    10000,
    (index) => ListTile(
      title: Text('Flutter Dicas 5 - aItem $index'),
    ),
  );
  @override
  void initState() {
    const _flutterDicasStringLonga =
        'Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, Flutter Dicas, ';
    log(_flutterDicasStringLonga);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dicas 5'),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => lista[index],
        itemCount: lista.length,
      ),
    );
  }
}
