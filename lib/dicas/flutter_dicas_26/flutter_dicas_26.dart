/*
Tipo genérico é um recurso de programação que permite criar classes, 
funções ou interfaces que podem ser parametrizadas com diferentes 
tipos de dados.


1- Flexibilidade de tipos: Permite a criação de componentes 
reutilizáveis que podem lidar com diferentes tipos de dados.

2- Reutilização de código: Evita a duplicação de código ao criar 
funcionalidades que podem ser aplicadas a vários tipos de dados.

3- Segurança de tipo: Garante a verificação estática de tipos em 
tempo de compilação, evitando erros de tipo durante a execução.

4- Abstração: Permite criar implementações genéricas para lógicas 
comuns que podem ser aplicadas a diferentes tipos de dados.

5- Extensibilidade: Facilita a extensão do comportamento de um tipo 
específico sem modificar a implementação genérica.
*/

class Box<T> {
  T value;

  Box(this.value);
}

void main() {
  Box<int> intBox = Box<int>(42);
  Box<String> stringBox = Box<String>('Hello');

  print(intBox.value); // Output: 42
  print(stringBox.value); // Output: Hello
}
