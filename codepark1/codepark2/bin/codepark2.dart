


import 'package:codepark3/smartphone.dart';

void main() async {
  Smartphone motorola = Smartphone(
      modelo: "G60S",
      dataFabricacao: DateTime(2019),
      possuiCamera: true,
      numeroCameraTraseira: 3);
  final foto = motorola.tirarFoto();

  print(foto.dataDeCriacao);

  await Future.delayed(Duration(seconds: 5));

  print(DateTime.now());
}
