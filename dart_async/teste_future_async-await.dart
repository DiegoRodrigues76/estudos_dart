import 'dart:async';

void main() async { 
  // Define a função principal. O `async` indica que essa função pode conter operações assíncronas, como `await`
  print('Iniciando consulta custosa...'); 
  // Imprime uma mensagem informando que uma consulta custosa está sendo iniciada

  var result = await costlyQuery(); 
  // Chama a função `costlyQuery` e aguarda sua conclusão. O `await` suspende a execução da função `main` até que `costlyQuery` retorne um resultado

  print('Resultado da consulta: $result'); 
  // Imprime o resultado da consulta custosa, que foi armazenado na variável `result`
}

Future<String> costlyQuery() async { 
  // Define uma função chamada `costlyQuery` que retorna um `Future<String>`. O `async` indica que a função é assíncrona
  await Future.delayed(Duration(seconds: 2)); 
  // Suspende a execução da função por 2 segundos. Isso simula uma operação custosa, como uma consulta a um banco de dados ou uma requisição de rede
  return 'Consulta finalizada'; 
  // Retorna a string 'Consulta finalizada' após a conclusão da operação custosa
}
