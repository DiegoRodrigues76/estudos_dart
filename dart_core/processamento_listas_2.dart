import 'dart:core'; 

void main() { 
  List<String> names = [' Eldimael ', ' Gabriel ', ' Diego ']; 
  // Declara uma lista de strings chamada `names` 

  for (int i = 0; i < names.length; i++) { 
    // Inicia um laço `for` que percorre a lista `names` usando um índice `i`
    names[i] = names[i].trim().toUpperCase(); 
    // Para cada elemento da lista, remove os espaços em branco ao redor da string com `trim()` e converte a string para letras maiúsculas com `toUpperCase()`
  }

  for (String name in names) { 
    // Inicia um laço `for-in` que percorre cada elemento da lista `names` diretamente, atribuindo cada elemento à variável `name` a cada iteração
    if (name.isEmpty) { 
      // Verifica se a string `name` está vazia usando o método `isEmpty`
      print('Nome está vazio.'); 
      // Se a string estiver vazia, imprime 'Nome está vazio.'
    } else {
      print('Nome: $name'); 
      // Se a string não estiver vazia, imprime 'Nome: ' seguido do valor da string `name`
    }
  }
}
