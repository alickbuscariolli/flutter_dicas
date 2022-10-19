import 'package:flutter/material.dart';

import 'flutter_dicas_inherited_widget.dart';

class FlutterDicasStatefulWidget extends StatefulWidget {
  const FlutterDicasStatefulWidget({Key? key}) : super(key: key);

  @override
  State<FlutterDicasStatefulWidget> createState() =>
      _FlutterDicasStatefulWidgetState();
}

class _FlutterDicasStatefulWidgetState
    extends State<FlutterDicasStatefulWidget> {
  int contador = 0;

  void incrementarContador() {
    setState(
      () {
        contador++;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Recuperando a variável dica do Inherited Widget
    final dica = FlutterDicasInheritedWidget.of(context)?.dica;

    return Scaffold(
      appBar: AppBar(
        title: Text('$dica: Stateful Widget'),
      ),
      body: Column(
        children: [
          const Text('Eu sou um Stateful Widget'),
          Text(
            'Contador: $contador',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          ElevatedButton(
            onPressed: incrementarContador,
            child: const Text('Incrementar'),
          ),
        ],
      ),
    );
  }
}
