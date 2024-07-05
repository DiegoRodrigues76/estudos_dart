import 'dart:async'; 

void main() async {
  try { 
    // Inicia um bloco `try` que captura exceções que possam ocorrer dentro dele
    print('Iniciando operação...'); 
    // Imprime uma mensagem informando que uma operação está sendo iniciada

    var result = await faultyOperation(); 
    // Chama a função `faultyOperation` e aguarda sua conclusão

    print('Resultado da operação: $result'); 
    // Imprime o resultado da operação, que foi armazenado na variável `result`
  } catch (e) { 
    // Captura qualquer exceção lançada no bloco `try` e a armazena na variável `e`
    print('Erro capturado:\n$e'); 
    // Imprime a mensagem de erro capturada
  }
}

Future<String> faultyOperation() async { 
  // Define uma função chamada `faultyOperation` que retorna um `Future<String>`
  await Future.delayed(Duration(seconds: 1)); 
  // Suspende a execução da função por 1 segundo.

  throw Exception('Algo deu errado!'); 
  // Lança uma exceção com a mensagem 'Algo deu errado!'
}