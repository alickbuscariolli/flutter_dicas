import 'package:flutter/material.dart';

// Fechar o teclado ao rolar a tela pra baixo
class DicaRapida1 extends StatefulWidget {
  const DicaRapida1({Key? key}) : super(key: key);

  @override
  State<DicaRapida1> createState() => _DicaRapida1State();
}

class _DicaRapida1State extends State<DicaRapida1> {
  final list = List.generate(50, (int index) => 'Flutter Dicas - ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            const TextField(
              autofocus: true,
              decoration: InputDecoration(hintText: 'Flutter Dicas Text Field'),
            ),
            const SizedBox(height: 16),
            ...list
                .map(
                  (String dica) => Text(
                    dica,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
