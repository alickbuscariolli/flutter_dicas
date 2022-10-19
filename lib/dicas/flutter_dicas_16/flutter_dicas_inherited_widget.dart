import 'package:flutter/material.dart';

class FlutterDicasInheritedWidget extends InheritedWidget {
  const FlutterDicasInheritedWidget({Key? key, required Widget child})
      : super(child: child, key: key);

  final String dica = "Flutter Dicas - 16";

  static FlutterDicasInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<FlutterDicasInheritedWidget>();
  }

  @override
  bool updateShouldNotify(FlutterDicasInheritedWidget oldWidget) =>
      oldWidget.dica != dica;
}
