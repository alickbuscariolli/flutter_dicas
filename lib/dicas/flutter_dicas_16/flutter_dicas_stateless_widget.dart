import 'package:flutter/material.dart';

import 'flutter_dicas_inherited_widget.dart';

class FlutterDicasStatelessWidget extends StatelessWidget {
  const FlutterDicasStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Recuperando a variável dica do Inherited Widget
    final dica = FlutterDicasInheritedWidget.of(context)?.dica;

    return Scaffold(
      appBar: AppBar(
        title: Text('$dica: Stateless Widget'),
      ),
      body: const Text('Eu sou um Stateless Widget'),
    );
  }
}
