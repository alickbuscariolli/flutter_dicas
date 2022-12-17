import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterdicas/dicas/flutter_dicas_17/pessoa_mobx.dart';

class FlutterDicas17 extends StatefulWidget {
  const FlutterDicas17({Key? key}) : super(key: key);

  @override
  State<FlutterDicas17> createState() => _FlutterDicas17State();
}

class _FlutterDicas17State extends State<FlutterDicas17> {
  final pessoa = PessoaMobx();
  final nomeEC = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (formKey.currentState!.validate()) {
      pessoa.trocarApelido(nomeEC.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dicas 17 - MobX State Management'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Observer(
              builder: (_) {
                return Text('Meu apelido é: ${pessoa.apelido}');
              },
            ),
            TextFormField(
              controller: nomeEC,
              validator: (String? apelido) {
                if (apelido == null || apelido.isEmpty) {
                  return "Voce precisa selecionar um apelido antes";
                }
                return null;
              },
            ),
            ElevatedButton(
                onPressed: _submitForm, child: const Text('Trocar apelido'))
          ],
        ),
      ),
    );
  }
}
