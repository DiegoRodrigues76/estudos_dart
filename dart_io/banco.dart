import 'dart:io';

// Função principal do programa.
void main() {
  // Define uma variável 'balance' com um valor inicial de 1000.0, representando o saldo inicial.
  double balance = 1000.0;

  // Inicia um laço 'while' infinito para manter o programa em execução até que o usuário escolha sair.
  while (true) {
    // Exibe o menu de opções para o usuário.
    print('Bem-vindo ao Caixa Eletrônico');
    print('1. Verificar Saldo');
    print('2. Depositar');
    print('3. Sacar');
    print('4. Sair');
    print('Escolha uma opção:');

    // Lê a escolha do usuário a partir do input do console.
    String? choice = stdin.readLineSync();

    // Avalia a escolha do usuário utilizando uma estrutura 'switch'.
    switch (choice) {
      // Caso o usuário escolha '1', exibe o saldo atual.
      case '1':
        print('Seu saldo é: R\$ $balance');
        break;

      // Caso o usuário escolha '2', permite que ele insira um valor para depósito.
      case '2':
        print('Digite o valor para depositar:');
        // Lê o valor do depósito como uma string.
        String? depositInput = stdin.readLineSync();
        // Converte a string para um número do tipo 'double' e o armazena na variável 'deposit'.
        double deposit = double.parse(depositInput!);
        // Adiciona o valor depositado ao saldo.
        balance += deposit;
        // Informa ao usuário que o depósito foi realizado com sucesso e exibe o novo saldo.
        print('Depósito realizado com sucesso! Seu novo saldo é: R\$ $balance');
        break;

      // Caso o usuário escolha '3', permite que ele insira um valor para saque.
      case '3':
        print('Digite o valor para sacar:');
        // Lê o valor do saque como uma string.
        String? withdrawInput = stdin.readLineSync();
        // Converte a string para um número do tipo 'double' e o armazena na variável 'withdraw'.
        double withdraw = double.parse(withdrawInput!);
        // Verifica se o valor do saque é maior que o saldo disponível.
        if (withdraw > balance) {
          // Se for maior, exibe uma mensagem de saldo insuficiente.
          print('Saldo insuficiente!');
        } else {
          // Caso contrário, subtrai o valor do saque do saldo.
          balance -= withdraw;
          // Informa ao usuário que o saque foi realizado com sucesso e exibe o novo saldo.
          print('Saque realizado com sucesso! Seu novo saldo é: R\$ $balance');
        }
        break;

      // Caso o usuário escolha '4', exibe uma mensagem de agradecimento e encerra o programa.
      case '4':
        print('Obrigado por usar nosso Caixa Eletrônico!');
        return;

      // Caso o usuário insira uma opção inválida, exibe uma mensagem de erro.
      default:
        print('Opção inválida. Tente novamente.');
    }
  }
}
