import 'package:flutter/material.dart';

class FlutterDicas20 extends StatefulWidget {
  const FlutterDicas20({Key? key}) : super(key: key);

  @override
  State<FlutterDicas20> createState() => _FlutterDicas20State();
}

class _FlutterDicas20State extends State<FlutterDicas20> {
  String nome = 'Alick';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dicas 20 - '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Mudança de nome',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                nome,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    nome = 'Alick Buscariolli';
                  });
                },
                child: const Text('Mudar nome'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
