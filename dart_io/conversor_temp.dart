import 'dart:io';

void main() {
  // Inicia um laço 'while' infinito para manter o programa em execução até que o usuário escolha sair.
  while (true) {
    // Exibe o menu de opções para o usuário.
    print('Conversor de Temperatura');
    print('1. Celsius para Fahrenheit');
    print('2. Fahrenheit para Celsius');
    print('3. Celsius para Kelvin');
    print('4. Kelvin para Celsius');
    print('5. Sair');
    print('Escolha uma opção:');

    // Lê a escolha do usuário a partir do input do console.
    String? choice = stdin.readLineSync();

    // Se a escolha for '5', o programa agradece o usuário e encerra o laço, terminando a execução.
    if (choice == '5') {
      print('Obrigado por usar o conversor de temperatura!');
      break;
    }

    // Solicita ao usuário que digite a temperatura que deseja converter.
    print('Digite a temperatura:');
    // Lê a temperatura como uma string.
    String? tempInput = stdin.readLineSync();
    // Converte a string para um número do tipo 'double' e o armazena na variável 'temp'.
    double temp = double.parse(tempInput!);

    // Avalia a escolha do usuário utilizando uma estrutura 'switch'.
    switch (choice) {
      // Caso o usuário escolha '1', converte de Celsius para Fahrenheit.
      case '1':
        double result = celsiusToFahrenheit(temp);
        // Exibe o resultado da conversão.
        print('$temp°C é igual a $result°F');
        break;

      // Caso o usuário escolha '2', converte de Fahrenheit para Celsius.
      case '2':
        double result = fahrenheitToCelsius(temp);
        // Exibe o resultado da conversão.
        print('$temp°F é igual a $result°C');
        break;

      // Caso o usuário escolha '3', converte de Celsius para Kelvin.
      case '3':
        double result = celsiusToKelvin(temp);
        // Exibe o resultado da conversão.
        print('$temp°C é igual a $result K');
        break;

      // Caso o usuário escolha '4', converte de Kelvin para Celsius.
      case '4':
        double result = kelvinToCelsius(temp);
        // Exibe o resultado da conversão.
        print('$temp K é igual a $result°C');
        break;

      // Caso o usuário insira uma opção inválida, exibe uma mensagem de erro.
      default:
        print('Opção inválida. Tente novamente.');
    }
  }
}

// Função para converter de Celsius para Fahrenheit.
double celsiusToFahrenheit(double celsius) => (celsius * 9 / 5) + 32;

// Função para converter de Fahrenheit para Celsius.
double fahrenheitToCelsius(double fahrenheit) => (fahrenheit - 32) * 5 / 9;

// Função para converter de Celsius para Kelvin.
double celsiusToKelvin(double celsius) => celsius + 273.15;

// Função para converter de Kelvin para Celsius.
double kelvinToCelsius(double kelvin) => kelvin - 273.15;
