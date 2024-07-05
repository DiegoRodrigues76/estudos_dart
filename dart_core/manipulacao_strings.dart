import 'dart:core'; 

void main() { 
  String sentence = '  Dart é incrível  '; 
  // Declara uma variável do tipo String chamada `sentence`

  String trimmed = sentence.trim(); 
  // Remove os espaços em branco no início e no final da string `sentence` e armazena o resultado na variável `trimmed`

  String upper = trimmed.toUpperCase(); 
  // Converte a string `trimmed` para letras maiúsculas e armazena o resultado na variável `upper`

  String lower = trimmed.toLowerCase(); 
  // Converte a string `trimmed` para letras minúsculas e armazena o resultado na variável `lower`

  bool containsDart = trimmed.contains('Dart'); 
  // Verifica se a string `trimmed` contém a palavra 'Dart' e armazena o resultado (true ou false) na variável `containsDart`

  bool startsWithDart = trimmed.startsWith('Dart'); 
  // Verifica se a string `trimmed` começa com a palavra 'Dart' e armazena o resultado (true ou false) na variável `startsWithDart`

  bool endsWithAmazing = trimmed.endsWith('amazing'); 
  // Verifica se a string `trimmed` termina com a palavra 'amazing' e armazena o resultado (true ou false) na variável `endsWithAmazing`

  bool endsWithIncrivel = trimmed.endsWith('incrível'); 
  // Verifica se a string `trimmed` termina com a palavra 'incrível' e armazena o resultado (true ou false) na variável `endsWithIncrivel`

  print('Original: "$sentence"'); 
  // Imprime a string original com espaços no início e no final

  print('Sem espaços: "$trimmed"'); 
  // Imprime a string sem os espaços em branco no início e no final

  print('Maiúsculas: "$upper"'); 
  // Imprime a string convertida para letras maiúsculas

  print('Minúsculas: "$lower"'); 
  // Imprime a string convertida para letras minúsculas

  print('Contém "Dart"? $containsDart'); 
  // Imprime se a string contém a palavra 'Dart' (true ou false)

  print('Começa com "Dart"? $startsWithDart'); 
  // Imprime se a string começa com a palavra 'Dart' (true ou false)

  print('Termina com "amazing"? $endsWithAmazing'); 
  // Imprime se a string termina com a palavra 'amazing' (true ou false)

  print('Termina com "incrível"? $endsWithIncrivel'); 
  // Imprime se a string termina com a palavra 'incrível' (true ou false)
}
