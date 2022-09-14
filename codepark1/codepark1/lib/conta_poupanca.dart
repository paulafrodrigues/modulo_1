import 'package:codepark2/conta_bancaria.dart';

class ContaPoupanca extends ContaBancaria {
  ContaPoupanca(
      {required super.agencia,
      required super.numeroConta,
      required super.tipo});

  @override
  void transferir(int agencia, int numeroConta) {
    print("transferindo para $agencia / $numeroConta");
  }
}
