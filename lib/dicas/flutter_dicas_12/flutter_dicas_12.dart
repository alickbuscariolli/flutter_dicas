void main() {
  final eu = Pessoa(nome: 'Alick', idade: 32);

  _usandoModoCascata(eu);

  _usandoModoNormal(eu);
}

void _usandoModoCascata(Pessoa eu) {
  eu
    ..dizerOla()
    ..dizerAIdade();
}

void _usandoModoNormal(Pessoa eu) {
  eu.dizerOla();
  eu.dizerAIdade();
}

class Pessoa {
  final String nome;
  final int idade;

  Pessoa({required this.nome, required this.idade});

  void dizerOla() {
    print('Ola! Meu nome e $nome');
  }

  void dizerAIdade() {
    print('Tenho $idade anos');
  }
}
