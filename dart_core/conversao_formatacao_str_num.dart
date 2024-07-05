import 'dart:core';

void main() { 
  String strNumber = '123.456'; // Declara uma variável `strNumber` do tipo String
  
  // Converte a string `strNumber` para um número de ponto flutuante (double) usando `double.parse`
  double number = double.parse(strNumber);

  // Converte o número para uma string com 2 casas decimais fixas
  String fixed = number.toStringAsFixed(2);
  
  // Converte o número para uma string com um total de 4 dígitos significativos
  String precision = number.toStringAsPrecision(4);

  // Imprime o número original
  print('Número original: $number');
  
  // Imprime o número formatado com 2 casas decimais
  print('Número formatado (2 casas decimais): $fixed');
  
  // Imprime o número formatado com 4 dígitos de precisão
  print('Número formatado (4 dígitos de precisão): $precision');
}
