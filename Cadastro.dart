import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

main(List<String> args) {
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");
  while (condicao) {
    print("Digite um comando:");
    var comando = stdin.readLineSync();
    if (comando == "sair") {
      print("Encerrando programa...");
      condicao = false;
    } else if (comando == "cadastrar") {
      print("\x1B[2J\x1B[0;0H");
      cadastrar();
    } else if (comando == "imprimir") {
      print(cadastros);
    } else {
      print("Comando não reconhecido, verificar!");
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};

  print("Digite o seu Nome:");
  cadastro["Nome"] = stdin.readLineSync();

  print("Digite o a sua Idade:");
  cadastro["Idade"] = stdin.readLineSync();

  print("Digite a sua Cidade:");
  cadastro["Cidade"] = stdin.readLineSync();

  print("Digite o seu Estado:");
  cadastro["Estado"] = stdin.readLineSync();

  cadastros.add(cadastro);
}
