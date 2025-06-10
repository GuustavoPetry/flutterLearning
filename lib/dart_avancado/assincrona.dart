// ignore_for_file: avoid_print

/* 
  Programação Assíncrona é um modelo de programação onde as operações que podem levar tempo para serem concluídas
  (como chamadas de rede, leitura de arquivos ou espera por eventos) são executadas sem bloqueat o fluxo
  principal do programa.

  CONCEITO TÉCNICO:
    em vez de esperar uma tarefa demorada terminar antes de continuar, a programação assíncrona registra um callback
    (função de retorno) ou usa estruturas como Future, Stream, async/await para delegar a tarefa e continuar executando
    o restante do código. Quando a tarefa termina, o resultado é entregue automaticamente.

  NO DART:
    Future<T> => representa uma operação assíncrona que eventualmente retorna um valor do tipo T

    async e await => permitem escrever o código assíncrono como se fosse síncrono

    Stream<T> => representa uma sequência assíncrona de valores (ex: eventos, dados em série)
 */

void main(List<String> args) {
  imprimeNumeros();
}

  void imprimeNumeros() async {
    numero1();
    await numero2();
    numero3();
  }

  void numero1() {
    print("Numero 01");
  }

  Future<void> numero2 () {
    return Future.delayed(Duration(seconds: 2), () => print("Numero 02"));
  }

  void numero3() {
    print("Numero 03");
  }