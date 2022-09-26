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
      body: ListView.builder(
        itemCount: _flutterDicas2.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index) => Align(
          alignment: Alignment.topLeft,
          child: ChildWidget(
            btnText: _flutterDicas2[index],
          ),
        ),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  final String btnText;

  const ChildWidget({
    required this.btnText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
