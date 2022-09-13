import 'dart:ui';
import 'package:flutter/material.dart';

class FlutterDicas13 extends StatefulWidget {
  const FlutterDicas13({Key? key}) : super(key: key);

  @override
  State<FlutterDicas13> createState() => _FlutterDicas13State();
}

class _FlutterDicas13State extends State<FlutterDicas13> {
  bool _shouldShowFilter = false;

  Future<void> _showFilter() async {
    // Show filter
    setState(() => _shouldShowFilter = true);

    await Future.delayed(const Duration(seconds: 5));

    // Hide filter after 5 seconds
    setState(() => _shouldShowFilter = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dicas - 13'),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('./assets/images/logo.png'),
                TextButton(
                  onPressed: _showFilter,
                  child: const Text(
                    'Mostrar Filtro',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (_shouldShowFilter) const _GlassFilterPositionedWidget(),
        ],
      ),
    );
  }
}

class _GlassFilterPositionedWidget extends StatelessWidget {
  const _GlassFilterPositionedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: const SizedBox.shrink(),
      ),
    );
  }
}
