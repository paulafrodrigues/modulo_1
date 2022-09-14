import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("\x1B[2J\x1B[0;0H");

  print("Questao 1");
  print('Digite o 1º numero a ser somado: ');

  String valorUm = stdin.readLineSync(encoding: utf8)!;

  print("Digite o 2º número a ser somado: ");
  String valorDois = stdin.readLineSync(encoding: utf8)!;

  double valorUmDouble = double.parse(valorUm);
  double valorDoisDouble = double.parse(valorDois);

  double resultSoma = valorUmDouble + valorDoisDouble;

  print("O resultado da soma é ${resultSoma.toStringAsFixed(2)}");

  print("Questao 2");
  print('Digite um número: ');

  String primeiroValor = stdin.readLineSync(encoding: utf8)!;

  print("Digite um número a ser subtraído: ");

  String segundoValor = stdin.readLineSync(encoding: utf8)!;

  double primeiroValorDouble = double.parse(primeiroValor);
  double segundoValorDouble = double.parse(segundoValor);

  double resultSubtracao = primeiroValorDouble - segundoValorDouble;

  print("O resultado da Subtração é ${resultSubtracao.toStringAsFixed(2)}");

  print("Questao 3");
  print('Digite um número: ');

  String primeiroNumero = stdin.readLineSync(encoding: utf8)!;

  print("Digite um número para multiplicar o valor: ");

  String segundoNumero = stdin.readLineSync(encoding: utf8)!;

  double primeiroNumeroDouble = double.parse(primeiroNumero);
  double segundoNumeroDouble = double.parse(segundoNumero);

  double resultMultiplicacao = primeiroNumeroDouble * segundoNumeroDouble;

  print(
      "O resultado da multiplicação é ${resultMultiplicacao.toStringAsFixed(2)}");

  print("Questao 4");

  print('Digite o numero a ser dividido: ');

  String valor = stdin.readLineSync(encoding: utf8)!;

  print("Digite o divisor:");
  String divisor = stdin.readLineSync(encoding: utf8)!;

  double valorDouble = double.parse(valor);
  double divisorDouble = double.parse(divisor);

  double result = valorDouble / divisorDouble;

  print("O resultado é ${result.toStringAsFixed(2)}");

  print("Questão 5 - Calcule a área de um retângulo");

  print("Informe o tamanho da base do retângulo: ");
  String valorBaseRet = stdin.readLineSync(encoding: utf8)!;

  print("Informe a altura do retângulo: ");
  String valorAlturaRet = stdin.readLineSync(encoding: utf8)!;

  double valorBaseRetDouble = double.parse(valorBaseRet);
  double valorAlturaRetDouble = double.parse(valorAlturaRet);

  double valorAreaRet = valorBaseRetDouble * valorAlturaRetDouble;

  print("A área do retângulo é: ${valorAreaRet.toStringAsFixed(2)} m²");

  print("Questão 6 - Calcule a área de um triângulo equilatero");

  print("Informe o valor do lado do triângulo");
  String valorLateralTri = stdin.readLineSync(encoding: utf8)!;

  double valorLateralTriDouble = double.parse(valorLateralTri);

  //1,73 é o valor da raiz de 3

  double valorAreaTri =
      (1.73 * (valorLateralTriDouble * valorLateralTriDouble) / 4);

  print(
      "A área do triângulo equilatero informado é: ${valorAreaTri.toStringAsFixed(2)} m²");

  print("Questão 7 - Calcule o raio de uma circunferência");

  print("Informe o valor da circunferência que deseja saber o raio: ");
  String valorCircunferencia = stdin.readLineSync(encoding: utf8)!;

  double valorCircunferenciaDouble = double.parse(valorCircunferencia);

//para calcular o r precisamos usar o PI, que nesse caso usaremos o valor aproximado de 3,14

  double valorRaio = (valorCircunferenciaDouble / (2 * 3.14));
  print(
      "O valor do raio da circunferência informada é: ${valorRaio.toStringAsFixed(2)}cm");

  print("Questão 8 -  Informar primeiro nome e idade em anos, meses e dias!");

  print("Informe seu nome completo: ");
  String nomeCompleto = stdin.readLineSync(encoding: utf8)!;

  var primeiroNome = nomeCompleto.split(" ");

  print("Informe sua idade em dias: ");

  String diasInformados = stdin.readLineSync(encoding: utf8)!;

  int diasInt = int.parse(diasInformados);

  int idadeAnos = diasInt ~/ 365;

  diasInt %= 365;

  int idadeMeses = diasInt ~/ 30;

  diasInt %= 30;

  print(
      "Olá ${primeiroNome[0]}, sua idade em anos é ${idadeAnos.toStringAsFixed(0)} anos, ${idadeMeses.toStringAsFixed(0)} meses e ${diasInt.toStringAsFixed(0)} dias!");
}
