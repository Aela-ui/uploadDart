import 'dart:io';

main() {
  List<String> produtos = [];
  bool condicao = true;

  while (condicao) {
    print("Adicione um produto");
    String text = stdin.readLineSync();
    if (text == "sair") {
      print("Programa finalizado");
      condicao = false;
    } else if (text == "imprimir") {
      print(produtos);
      print("\n");
    } else {
      produtos.add(text);
    }
  }
}
