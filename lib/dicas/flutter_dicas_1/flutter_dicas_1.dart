import 'package:flutter/material.dart';

class FlutterDicas1 extends StatelessWidget {
  const FlutterDicas1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(width: 10, height: 10),
        const ColoredBox(color: Colors.white, child: Text('Flutter Dicas')),
        Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text('Flutter Dicas')),
      ],
    );
  }
}
