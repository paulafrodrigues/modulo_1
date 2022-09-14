import 'dart:io';

void main(List<String> arguments) {
  print("\x1B[2J\x1B[0;0H");
  print("Qual o valor do produto: ");

  double valor = double.parse(stdin.readLineSync().toString());

  print("escolha uma das opções abaixo: ");
  print("1 - Funcionário");
  print("2 - Cliente VIP");
  print("3 - Cliente comum");

  int tipo = int.parse(stdin.readLineSync().toString());

  switch (tipo) {
    case 1:
      double valorFunc = valor - ((valor * 10) / 100);
      print("O valor a pagar é R\$ ${valorFunc.toStringAsFixed(2)} reais.");

      break;
    case 2:
      double valorVip = valor - ((valor * 5) / 100);
      print("O valor a pagar é R\$ ${valorVip.toStringAsFixed(2)} reais.");
      break;
    case 3:
      double valorComum = valor;
      print("O valor a pagar é R\$ ${valorComum.toStringAsFixed(2)} reais.");
      break;
    default:
      print("O tipo de cliente não existe!");
  }
}
