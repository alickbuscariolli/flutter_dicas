import 'package:flutter/material.dart';
import 'package:flutterdicas/dicas/flutter_dicas_22/widgets/buttons_widget.dart';
import 'package:flutterdicas/dicas/flutter_dicas_22/widgets/counter_text_widget.dart';
import 'package:flutterdicas/dicas/flutter_dicas_22/widgets/top_widget.dart';

class FlutterDicas22 extends StatefulWidget {
  const FlutterDicas22({super.key});

  @override
  State<FlutterDicas22> createState() => _FlutterDicas22State();
}

class _FlutterDicas22State extends State<FlutterDicas22> {
  final _contador = ValueNotifier(0);

  void _increment() {
    _contador.value++;
  }

  void _decrement() {
    _contador.value--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Flutter Dicas 22 - Divida seu Widget em pequenos Widgets'),
      ),
      body: ValueListenableBuilder<int>(
        valueListenable: _contador,
        builder: (_, contador, __) {
          return SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopWidget(contador: contador),
                const SizedBox(height: 50),
                CounterTextWidget(contador: contador),
                const SizedBox(height: 50),
                ButtonsWidget(
                  decrement: _decrement,
                  increment: _increment,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
