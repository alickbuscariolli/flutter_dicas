import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  final void Function() decrement;
  final void Function() increment;

  const ButtonsWidget({
    required this.decrement,
    required this.increment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: decrement,
          child: const Text('Decrementar'),
        ),
        const SizedBox(width: 6),
        ElevatedButton(
          onPressed: increment,
          child: const Text('Incrementar'),
        ),
      ],
    );
  }
}
