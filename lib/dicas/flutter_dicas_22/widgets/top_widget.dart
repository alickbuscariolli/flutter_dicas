import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  final int contador;

  const TopWidget({required this.contador, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Contador ${contador > 0 ? 'maior que' : 'menor ou igual a'} zero',
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
