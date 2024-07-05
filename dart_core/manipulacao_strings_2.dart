import 'dart:core';

void main() {
  String sentence = 'Dart é fácil de aprender. Dart é divertido.';
  // Declara uma variável `sentence` do tipo String

  List<String> words = sentence.split(' '); 
  // Usa o método `split` para dividir a string `sentence` em uma lista de palavras, utilizando o espaço (' ') como delimitador

  int wordCount = words.length; 
  // Calcula o número de palavras na lista `words` usando o `length`

  String replaced = sentence.replaceAll('Dart', 'Flutter'); 
  // Substitui todas as ocorrências da palavra 'Dart' por 'Flutter' na string `sentence` utilizando o método `replaceAll`

  print('Frase original: $sentence'); 
  // Imprime a frase original

  print('Número de palavras: $wordCount'); 
  // Imprime o número de palavras na frase

  print('Frase após substituição: $replaced'); 
  // Imprime a frase após substituir 'Dart' por 'Flutter'
}
