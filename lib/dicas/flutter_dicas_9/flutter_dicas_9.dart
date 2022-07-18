import 'package:flutter/material.dart';

class FlutterDicas9 extends StatelessWidget {
  const FlutterDicas9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.getPrimaryColor,
      appBar: AppBar(
        title: const Text('Flutter Dicas - 9'),
      ),
      body: Container(
        height: context.getHeight / 2,
        color: context.getSecondaryColor,
      ),
    );
  }
}

extension ContextExtension on BuildContext {
  // Size
  double get getHeight => MediaQuery.of(this).size.height;

  // Colors
  Color get getPrimaryColor => Theme.of(this).colorScheme.primary;
  Color get getSecondaryColor => Theme.of(this).colorScheme.secondary;
}
