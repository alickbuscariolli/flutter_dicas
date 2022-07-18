import 'package:flutter/material.dart';

class FlutterDicas2 extends StatefulWidget {
  const FlutterDicas2({Key? key}) : super(key: key);

  @override
  State<FlutterDicas2> createState() => _FlutterDicas2State();
}

class _FlutterDicas2State extends State<FlutterDicas2> {
  final List<String> _flutterDicas2 =
      List.generate(10, (index) => 'Flutter Dicas $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dicas'),
      ),
      body: Row(
        children: _flutterDicas2
            .map(
              (btnText) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 4.0,
                    right: 4.0,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      btnText,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
