import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("\x1B[2J\x1B[0;0H");

  print("Essas são as operações disponíveis: ");
  print(
      "1 - Soma\n 2 - Subtração\n 3 - Multiplicação\n 4 - Divisão\n 5 - Área de um retângulo\n 6 - Área de um triângulo equilátero\n 7 - Raio de uma circunferência\n 8 - Calculo da idade em anos, dias e meses\n 9 - Sair");

  int escolha = 0;

  do {
    print("Escolha uma operação para ser feita: ");
    escolha = int.parse(stdin.readLineSync()!);

    switch (escolha) {
      case 1:
        print("Questao 1 - Soma");
        print('Digite o 1º numero a ser somado: ');
        String valorUm = stdin.readLineSync(encoding: utf8)!;
        print("Digite o 2º número a ser somado: ");
        String valorDois = stdin.readLineSync(encoding: utf8)!;
        double valorUmDouble = double.parse(valorUm);
        double valorDoisDouble = double.parse(valorDois);
        double resultSoma = valorUmDouble + valorDoisDouble;
        print("O resultado da soma é ${resultSoma.toStringAsFixed(2)}");
        break;

      case 2:
        print("Questao 2 - Subtração");
        print('Digite um número: ');
        String primeiroValor = stdin.readLineSync(encoding: utf8)!;
        print("Digite um número a ser subtraído: ");
        String segundoValor = stdin.readLineSync(encoding: utf8)!;
        double primeiroValorDouble = double.parse(primeiroValor);
        double segundoValorDouble = double.parse(segundoValor);
        double resultSubtracao = primeiroValorDouble - segundoValorDouble;
        print(
            "O resultado da Subtração é ${resultSubtracao.toStringAsFixed(2)}");
        break;

      case 3:
        print("Questao 3 - Multiplicação");
        print('Digite um número: ');
        String primeiroNumero = stdin.readLineSync(encoding: utf8)!;
        print("Digite um número para multiplicar o valor: ");
        String segundoNumero = stdin.readLineSync(encoding: utf8)!;
        double primeiroNumeroDouble = double.parse(primeiroNumero);
        double segundoNumeroDouble = double.parse(segundoNumero);
        double resultMultiplicacao = primeiroNumeroDouble * segundoNumeroDouble;
        print(
            "O resultado da multiplicação é ${resultMultiplicacao.toStringAsFixed(2)}");
        break;

      case 4:
        print("Questao 4 - Divisão");
        print('Digite o numero a ser dividido: ');
        String valor = stdin.readLineSync(encoding: utf8)!;
        print("Digite o divisor:");
        String divisor = stdin.readLineSync(encoding: utf8)!;
        double valorDouble = double.parse(valor);
        double divisorDouble = double.parse(divisor);
        double result = valorDouble / divisorDouble;
        print("O resultado é ${result.toStringAsFixed(2)}");
        break;

      case 5:
        print("Questão 5 - Calcule a área de um retângulo");
        print("Informe o tamanho da base do retângulo: ");
        String valorBaseRet = stdin.readLineSync(encoding: utf8)!;
        print("Informe a altura do retângulo: ");
        String valorAlturaRet = stdin.readLineSync(encoding: utf8)!;
        double valorBaseRetDouble = double.parse(valorBaseRet);
        double valorAlturaRetDouble = double.parse(valorAlturaRet);
        double valorAreaRet = valorBaseRetDouble * valorAlturaRetDouble;
        print("A área do retângulo é: ${valorAreaRet.toStringAsFixed(2)} m²");
        break;

      case 6:
        print("Questão 6 - Calcule a área de um triângulo equilatero");
        print("Informe o valor do lado do triângulo");
        String valorLateralTri = stdin.readLineSync(encoding: utf8)!;
        double valorLateralTriDouble = double.parse(valorLateralTri);
        //1,73 é o valor da raiz de 3
        double valorAreaTri =
            (1.73 * (valorLateralTriDouble * valorLateralTriDouble) / 4);
        print(
            "A área do triângulo equilatero informado é: ${valorAreaTri.toStringAsFixed(2)} m²");
        break;

      case 7:
        print("Questão 7 - Calcule o raio de uma circunferência");
        print("Informe o valor da circunferência que deseja saber o raio: ");
        String valorCircunferencia = stdin.readLineSync(encoding: utf8)!;
        double valorCircunferenciaDouble = double.parse(valorCircunferencia);
        //para calcular o r precisamos usar o PI, que nesse caso usaremos o valor aproximado de 3,14
        double valorRaio = (valorCircunferenciaDouble / (2 * 3.14));
        print(
            "O valor do raio da circunferência informada é: ${valorRaio.toStringAsFixed(2)}cm");
        break;

      case 8:
        print(
            "Questão 8 -  Informar primeiro nome e idade em anos, meses e dias!");
        print("Informe seu nome completo: ");
        String nomeCompleto = stdin.readLineSync(encoding: utf8)!;
        var primeiroNome = nomeCompleto.split(" ");
        print("Informe sua idade em dias: ");
        String diasInformados = stdin.readLineSync(encoding: utf8)!;
        double diasDouble = double.parse(diasInformados);
        int idadeAnos = diasDouble ~/ 365;
        double restoIdadeAnos = idadeAnos % 365;
        double idadeMeses = restoIdadeAnos / 12;
        double restoIdadeMeses = restoIdadeAnos % 12;
        double idadeDias = restoIdadeMeses;
        print(
            "Olá ${primeiroNome[0]}, sua idade em anos é ${idadeAnos.toStringAsFixed(0)} anos, ${idadeMeses.toStringAsFixed(0)} meses e ${idadeDias.toStringAsFixed(0)} dias!");
        break;
      default:
        print("número inválido!");
    }
  } while (escolha == 9);
}
