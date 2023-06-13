import 'package:flutter/material.dart';

class FlutterDicas25CustomContainer extends StatelessWidget {
  const FlutterDicas25CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: const Text('Sou um Container'),
    );
  }
}
