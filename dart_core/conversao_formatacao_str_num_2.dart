import 'dart:core'; 

void main() { 
  List<String> strNumbers = ['10', '20', '30', '40']; // Cria uma lista de strings contendo números
  
  // Converte a lista de strings para uma lista de inteiros utilizando a função `int.parse`
  List<int> numbers = strNumbers.map((str) => int.parse(str)).toList(); 

  // Calcula a média dos números na lista. Primeiro, soma todos os números usando `reduce` e depois divide pelo tamanho da lista
  double average = numbers.reduce((a, b) => a + b) / numbers.length;

  // Imprime a lista de strings
  print('Lista de strings: $strNumbers');
  
  // Imprime a lista de números inteiros
  print('Lista de números: $numbers');
  
  // Imprime a média dos números
  print('Média dos números: $average');
}
