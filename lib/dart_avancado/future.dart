// ignore_for_file: avoid_print

/* 
  Um Future representa uma operação assíncrona que retornará um único valor no futuro ou um erro

  QUANDO USAR:
    - quando você espera um único resultado

  EXEMPLO:
    - buscar dados na internet
    - ler um arquivo uma única vez
    - salvar dados no banco

  CARACTERÍSTICAS:
    - executa uma vez e finaliza
    - pode retornar sucess (then) ou erro (catchError)
    - pode ser aguardado com await
 */

// Exemplo 01:
Future<String> fetchData() {
  // return Future.delayed(Duration(seconds: 2), () => "Dados Carregados");
  return Future.delayed(Duration(seconds: 2), () => throw Exception("Falha ao buscar recursos"));
}

// Exemplo 02 - Simulação de Login
Future<bool> fazerLogin(String usuario, String senha) async {
  await Future.delayed(Duration(seconds: 2)); // simula consulta no banco de dados
  if (usuario == "admin" && senha == "123") {
    return true;
  }
  throw Exception("Usuário/Senha Inválidos");
}

// Exemplo 03 - Localização
Future<String> obterLocalizacao() async {
  await Future.delayed(Duration(seconds: 2));
  return "Latitude: -23.0000 | Longitude: -48.0000";
}

void main(List<String> args) async {
  // Exemplo 01:
  // final dados = await fetchData();
  // print(dados);

  // Exemplo 02:
  // final sucesso = await fazerLogin("admin", "123");
  // print(sucesso);

  // Exemplo 03:
  // final localizacao = await obterLocalizacao();
  // print(localizacao);

  // Tratamento de Erros:
  // try {
  //   // Código a ser executado caso funcione;
  //   final dados = await fetchData();
  //   print(dados);
  // } catch(erro) {
  //   // Código a ser executado caso falhe;
  //   print(erro.toString());
  // }

  try {
    final sucesso = await fazerLogin("admin", "1234");
    print(sucesso);
  } catch(erro) {
    print("Erro no login: $erro");
  }
}