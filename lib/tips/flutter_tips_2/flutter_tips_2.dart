import 'package:flutter/material.dart';

class FlutterTips2 extends StatefulWidget {
  const FlutterTips2({Key? key}) : super(key: key);

  @override
  State<FlutterTips2> createState() => _FlutterTips2State();
}

class _FlutterTips2State extends State<FlutterTips2> {
  final List<String> _flutterTips2 =
      List.generate(10, (index) => 'Flutter Tips $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tips'),
      ),
      body: ListView.builder(
        itemCount: _flutterTips2.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index) => Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                _flutterTips2[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
