import 'package:flutter/material.dart';

class CounterTextWidget extends StatelessWidget {
  final int contador;

  const CounterTextWidget({required this.contador, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      contador.toString(),
      style: const TextStyle(
        fontSize: 64,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
