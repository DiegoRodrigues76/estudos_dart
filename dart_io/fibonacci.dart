void main() {
  // Define uma variável 'terms' com o valor 10, que representa o número de termos desejados na sequência de Fibonacci.
  int terms = 10;

  // Chama a função 'generateFibonacci' passando 'terms' como argumento,
  // e armazena o resultado (a sequência de Fibonacci) na variável 'fibonacciSequence'.
  List<int> fibonacciSequence = generateFibonacci(terms);

  // Imprime no console a sequência de Fibonacci gerada, utilizando interpolação de string
  // para incluir o número de termos e a sequência em si.
  print('A sequência de Fibonacci com $terms termos é: $fibonacciSequence');
}
 
List<int> generateFibonacci(int terms) {
  // Inicializa uma lista 'sequence' com os dois primeiros números da sequência de Fibonacci: 0 e 1.
  List<int> sequence = [0, 1];

  // Usa um laço 'for' para gerar os próximos termos da sequência,
  // começando a partir do índice 2 e continuando até 'terms - 1'.
  for (int i = 2; i < terms; i++) {
    // Calcula o próximo número da sequência somando os dois números anteriores
    // e adiciona esse novo número à lista 'sequence'.
    sequence.add(sequence[i - 1] + sequence[i - 2]);
  }

  // Retorna a lista 'sequence', que agora contém a sequência de Fibonacci com o número de termos especificado.
  return sequence;
}
