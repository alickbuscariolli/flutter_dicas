import 'package:flutter/material.dart';

class FlutterDicas25CustomRow extends StatelessWidget {
  const FlutterDicas25CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text('Widget 1 da Row'),
        Text('Widget 2 da Row'),
        Text('Widget 3 da Row'),
      ],
    );
  }
}
