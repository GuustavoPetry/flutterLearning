// ignore_for_file: avoid_print

/* 
  Uma Stream representa uma fonte de eventos/dados que ocorrem ao longo do tempo
  QUANDO USAR:
    - quando você precisa escutar atualizações contínuas.
    - Ex: GPS, mensagens de chat, digitação em tempo real, eventos de usuário

  CARACTERÍSTICAS:
    - pode emitir valore com yield
    - pode durar indefinidamente
    - pode ser usada com "listen" ou "await for"
    - podemos usar async* para declarar funções assíncronas que retornam uma Stream
 */

// // Exemplo 01 - Contador de Tempo
// Stream<int> contarTempo() async* {
//   for(int i = 0; i < 10; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     yield i;
//     /* 
//       yield serve como um emissor, ele emite a nova informação para a Stream,
//       como se fosse um return, porém, sem finalizar a função.
//      */
//   }
// }

// // Exemplo 02 - Simulação de Chat
// Stream<String> mensagemChat() async* {
//   yield "oi";
//   await Future.delayed(Duration(seconds: 2));
//   yield "tudo bem?";
//   await Future.delayed(Duration(seconds: 2));
//   yield "sim, e vc?";
//   await Future.delayed(Duration(seconds: 2));
//   yield "que bom!";
//   await Future.delayed(Duration(seconds: 2));
//   yield "tchau";
// }

// void main(List<String> args) {
//   contarTempo().listen(
//     (event) => print("Mensagem: $event"),
//     onDone: () => print("Stream finalizada")
//   );

//   mensagemChat().listen(
//     (event) => print("Mensagem: $event"),
//     onDone: () => print("Chat Encerrado")
//   );


// }

// Exemplos com tratamento de erros try/catch:
Stream<int> contarTempo() async* {
  try {
    for(int i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      if(i == 3) {
        throw Exception("Erro ao contar número: $i");
      }
      yield i;
    }
  } catch(e) {
    print("Erro no contador de tempo => $e");
  }
}

void main(List<String> args) {
  contarTempo().listen(
    (event) => print("Contagem: $event"),
    onError: (erro) => print(erro),
    onDone: () => print("Finalizado")
  );
}