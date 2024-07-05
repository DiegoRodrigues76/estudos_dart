import 'dart:core'; 

void main() {
  String email = 'exemplo@teste.com'; 
  // Declara uma variável `email` do tipo String

  bool isValidEmail = validateEmail(email); 
  // Chama a função `validateEmail` passando o `email` como argumento e armazena o resultado (true ou false) na variável `isValidEmail`

  print('O email "$email" é válido? $isValidEmail'); 
  // Imprime se o email é válido ou não, utilizando o valor de `isValidEmail`
}

bool validateEmail(String email) { 
  // Define a função `validateEmail` que recebe um argumento `email` do tipo String e retorna um valor booleano
  if (email.contains('@') && email.contains('.')) { 
    // Verifica se o email contém os caracteres '@' e '.'
    int atIndex = email.indexOf('@'); 
    // Encontra a posição do caractere '@' na string `email` e armazena na variável `atIndex`
    int dotIndex = email.lastIndexOf('.'); 
    // Encontra a posição do último caractere '.' na string `email` e armazena na variável `dotIndex`

    if (atIndex > 0 && dotIndex > atIndex + 1 && dotIndex < email.length - 1) { 
      // Verifica se:
      // 1. `atIndex` é maior que 0 (ou seja, '@' não está na primeira posição)
      // 2. `dotIndex` é maior que `atIndex + 1` (ou seja, '.' está após o '@' e há pelo menos um caractere entre eles)
      // 3. `dotIndex` é menor que `email.length - 1` (ou seja, '.' não está na última posição)
      return true; 
      // Se todas as condições forem verdadeiras, retorna `true`, indicando que o email é válido
    }
  }
  return false; 
  // Se alguma condição falhar, retorna `false`, indicando que o email não é válido
}
