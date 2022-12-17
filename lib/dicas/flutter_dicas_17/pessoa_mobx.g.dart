// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pessoa_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PessoaMobx on PessoaMobxBase, Store {
  late final _$apelidoAtom =
      Atom(name: 'PessoaMobxBase.apelido', context: context);

  @override
  String get apelido {
    _$apelidoAtom.reportRead();
    return super.apelido;
  }

  @override
  set apelido(String value) {
    _$apelidoAtom.reportWrite(value, super.apelido, () {
      super.apelido = value;
    });
  }

  late final _$PessoaMobxBaseActionController =
      ActionController(name: 'PessoaMobxBase', context: context);

  @override
  void trocarApelido(String novoApelido) {
    final _$actionInfo = _$PessoaMobxBaseActionController.startAction(
        name: 'PessoaMobxBase.trocarApelido');
    try {
      return super.trocarApelido(novoApelido);
    } finally {
      _$PessoaMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
apelido: ${apelido}
    ''';
  }
}
