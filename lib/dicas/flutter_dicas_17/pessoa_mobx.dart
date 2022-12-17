import 'package:mobx/mobx.dart';
part 'pessoa_mobx.g.dart';

class PessoaMobx = PessoaMobxBase with _$PessoaMobx;

abstract class PessoaMobxBase with Store {
  @observable
  String apelido = 'Aligao';

  @action
  void trocarApelido(String novoApelido) {
    apelido = novoApelido;
  }
}
