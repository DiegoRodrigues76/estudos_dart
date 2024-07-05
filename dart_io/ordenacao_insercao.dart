void main() {
  // Define uma lista de números inteiros desordenados.
  List<int> numbers = [29, 10, 14, 37, 13];
  // Exibe a lista original no console.
  print('Lista original: $numbers');
  // Chama a função de ordenação por inserção para ordenar a lista.
  insertionSort(numbers);
  // Exibe a lista ordenada no console.
  print('Lista ordenada: $numbers');
}
 
// Função para ordenar uma lista de números inteiros usando o algoritmo de ordenação por inserção.
void insertionSort(List<int> list) {
  // Itera sobre a lista a partir do segundo elemento até o final.
  for (int i = 1; i < list.length; i++) {
    // Guarda o valor atual da lista na variável 'key'.
    int key = list[i];
    // Define a variável 'j' como o índice do elemento anterior ao atual.
    int j = i - 1;
    // Move os elementos da lista que são maiores que 'key' para a direita,
    // a fim de abrir espaço para a 'key' na posição correta.
    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j];
      j--;
    }
    // Insere o valor 'key' na posição correta na lista.
    list[j + 1] = key;
  }
}
