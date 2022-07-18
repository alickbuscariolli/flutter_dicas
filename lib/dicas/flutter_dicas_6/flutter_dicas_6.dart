import 'dart:developer';

import 'package:flutter/material.dart';

class FlutterDicas6 extends StatefulWidget {
  const FlutterDicas6({Key? key}) : super(key: key);

  @override
  State<FlutterDicas6> createState() => _FlutterDicas6State();
}

class _FlutterDicas6State extends State<FlutterDicas6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dicas 6'),
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
                child: Text(
                  'Flutter Dicas - Dica 6',
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
