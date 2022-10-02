import 'dart:developer';

import 'package:flutter/material.dart';

class FlutterTips6 extends StatefulWidget {
  const FlutterTips6({Key? key}) : super(key: key);

  @override
  State<FlutterTips6> createState() => _FlutterTips6State();
}

class _FlutterTips6State extends State<FlutterTips6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tips 6'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: const Color(0xFF0468d7),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(32.0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Flutter Tips - Tip 6',
                  style: TextStyle(
                    fontSize: 70,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
