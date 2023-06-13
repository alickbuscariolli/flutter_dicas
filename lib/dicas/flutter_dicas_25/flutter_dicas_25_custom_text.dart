import 'package:flutter/material.dart';

class FlutterDicas25CustomText extends StatelessWidget {
  const FlutterDicas25CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sou um Text',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontFamily: 'Arial',
        height: 1.2,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
