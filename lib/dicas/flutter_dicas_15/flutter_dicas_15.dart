import 'package:flutter/material.dart';

class FlutterDicas14 extends StatefulWidget {
  const FlutterDicas14({Key? key}) : super(key: key);

  @override
  State<FlutterDicas14> createState() => _FlutterDicas14State();
}

class _FlutterDicas14State extends State<FlutterDicas14> {
  bool mostrarDoisWidgets = true;
  final listaDeWidgets = [
    'Texto 1',
    'Text 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dicas - 15'),
      ),
      body: Column(
        children: [
          const Text('Use Spread Operator quando possível'),
          if (mostrarDoisWidgets)
            ...listaDeWidgets.map((texto) => Text(texto)).toList()
        ],
      ),
    );
  }
}
