import 'dart:io'; 

void main() {
  // Define a palavra que o jogador deve adivinhar.
  String word = 'flutter';
  // Lista que armazena as letras já adivinhadas pelo jogador.
  List<String> guessedLetters = [];
  // Define o número inicial de tentativas permitidas.
  int attempts = 6;

  // Laço principal que continua enquanto o jogador ainda tem tentativas restantes.
  while (attempts > 0) {
    // Obtém a versão da palavra com as letras adivinhadas até o momento.
    String displayWord = getDisplayWord(word, guessedLetters);
    // Exibe a palavra com os espaços em branco para as letras não adivinhadas.
    print('Palavra: $displayWord');
    // Exibe o número de tentativas restantes.
    print('Tentativas restantes: $attempts');
    // Solicita ao jogador que digite uma letra.
    print('Digite uma letra:');
    // Lê a letra digitada pelo jogador.
    String? guess = stdin.readLineSync();

    // Verifica se a entrada é nula ou vazia e, em caso afirmativo, solicita novamente.
    if (guess == null || guess.isEmpty) {
      print('Entrada inválida.');
      continue; // Volta ao início do laço para uma nova tentativa.
    }

    // Verifica se a letra já foi adivinhada anteriormente.
    if (guessedLetters.contains(guess)) {
      print('Você já tentou essa letra.');
      continue; // Volta ao início do laço para uma nova tentativa.
    }

    // Adiciona a letra adivinhada à lista de letras já tentadas.
    guessedLetters.add(guess);

    // Se a letra não está na palavra, decrementa o número de tentativas.
    if (!word.contains(guess)) {
      attempts--;
    }

    // Se a palavra completa foi adivinhada, exibe uma mensagem de parabéns e encerra o jogo.
    if (displayWord == word) {
      print('Parabéns! Você adivinhou a palavra: $word');
      break;
    }
  }

  // Se as tentativas se esgotaram, exibe uma mensagem de derrota.
  if (attempts == 0) {
    print('Você perdeu! A palavra era: $word');
  }
}

// Função que retorna a palavra com as letras adivinhadas e espaços para as não adivinhadas.
String getDisplayWord(String word, List<String> guessedLetters) {
  // Inicializa uma string para armazenar a versão da palavra com espaços.
  String displayWord = '';
  // Itera sobre cada caractere da palavra original.
  for (int i = 0; i < word.length; i++) {
    // Se a letra foi adivinhada, adiciona-a à string de exibição.
    if (guessedLetters.contains(word[i])) {
      displayWord += word[i];
    } else {
      // Caso contrário, adiciona um sublinhado.
      displayWord += '_';
    }
  }
  return displayWord; // Retorna a string de exibição.
}
