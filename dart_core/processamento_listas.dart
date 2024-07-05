import 'dart:core'; 

void main() { 
  List<int> numbers = [3, 1, 4, 1, 5, 9]; 
  // Declara uma lista de inteiros chamada `numbers`

  numbers.addAll([2, 6, 5]); 
  // Adiciona todos os elementos da lista [2, 6, 5] ao final da lista `numbers`

  numbers.sort(); 
  // Ordena a lista `numbers` em ordem crescente

  print('Lista de números: $numbers'); 
  // Imprime a lista de números após a adição e ordenação

  numbers.removeAt(3); 
  // Remove o elemento na posição 3 (quarto elemento, pois a indexação começa em 0) da lista `numbers`

  print('Após remover o quarto elemento: $numbers'); 
  // Imprime a lista de números após a remoção do quarto elemento

  numbers.clear(); 
  // Remove todos os elementos da lista `numbers`, deixando-a vazia

  print('Após limpar a lista: $numbers'); 
  // Imprime a lista de números após a limpeza, que agora está vazia
}
