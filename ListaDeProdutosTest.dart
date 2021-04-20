import 'dart:io';

List<String> produtos = [];
main(List<String> args) {
  bool condicao = true;

  while (condicao) {
    print("Adicione um Produto:");
    var text = stdin.readLineSync();
    if (text == "sair") {
      print("Saindo do Sistema...");
      condicao = false;
    } else if (text == "imprimir") {
      imprimir();
    } else if (text == "remover") {
      remover();
    } else {
      produtos.add(text.toString());
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

imprimir() {
  for (int i = 0; i < produtos.length; i++) {
    print("Item $i - ${produtos[i]}");
  }
}

remover() {
  print("Qual o item que deseja Remover?");
  imprimir();
  var item = stdin.readLineSync();
  produtos.removeAt(int.parse(item.toString()));
  print("Item Removido com Sucesso!");
}
