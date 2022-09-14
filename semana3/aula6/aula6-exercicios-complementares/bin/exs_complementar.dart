import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("\x1B[2J\x1B[0;0H");

  // exercício 1
  /* print("Escolha um número qualquer.");
  double primeiroNumero = double.parse(stdin.readLineSync()!);

  print("Escolha um segundo número.");
  double segundoNumero = double.parse(stdin.readLineSync()!);

  if (primeiroNumero > segundoNumero) {
    print("O maior número entre os dois informados é: $primeiroNumero");
  } else {
    print("O maior número entre os dois informados é: $segundoNumero");
  } */

// exercício 2
  /*  print("Informe o número de maçãs que deseja comprar:");
  double numeroMaca = double.parse(stdin.readLineSync()!);

  if (numeroMaca < 12) {
    double totalCompra = numeroMaca * 0.30;
    print("O valor total da compra é: $totalCompra");
  } else {
    double totalCompra = numeroMaca * 0.25;
    print("O valor total da compra é: $totalCompra");
  }
*/

//exercício 3
/*   print("Informe as medidas do triângulo à seguir:");
  print("Primeira medida: ");
  double firstSide = double.parse(stdin.readLineSync()!);

  print("Segunda medida: ");
  double secondSide = double.parse(stdin.readLineSync()!);

  print("Terceira medida: ");
  double thirdSide = double.parse(stdin.readLineSync()!);

  if (firstSide == secondSide && secondSide == thirdSide) {
    print("Esse triângulo é Equilátero!");
  } else if (firstSide != thirdSide && secondSide != thirdSide) {
    print("Esse triângulo é Escaleno");
  } else {
    print("Esse triângulo é Isósceles");
  } */

  //exercício 4
/*   print("Informe três números: ");
  print("Primeiro número: ");
  double firstNumber = double.parse(stdin.readLineSync()!);

  print("Segundo número: ");
  double secondNumber = double.parse(stdin.readLineSync()!);

  print("Terceiro número: ");
  double thirdNumber = double.parse(stdin.readLineSync()!);

  double greaterNumber = firstNumber;
  double lesserNumber = firstNumber;

  if (secondNumber > greaterNumber) {
    greaterNumber = secondNumber;
  }
  if (thirdNumber > secondNumber) {
    greaterNumber = thirdNumber;
  }
  if (secondNumber < lesserNumber) {
    lesserNumber = secondNumber;
  } if (thirdNumber < lesserNumber){
     lesserNumber = thirdNumber;
  }
  print(
      "O maior número informado é: $greaterNumber e o menor número informado é: $lesserNumber"); */

  // exercício 5
/*   print(
      "Informe qual o tipo de combustível comprado (A para álcool - G para gasolina): ");
  String fuelType = stdin.readLineSync(encoding: utf8)!;
  print("Informe o valor do combustível comprado: ");
  double fuelPrice = double.parse(stdin.readLineSync().toString());
  print("Informe a quantidade de litros vendidos");
  double literSold = double.parse(stdin.readLineSync()!);

  switch (fuelType) {
    case "A":
      if (literSold <= 20) {
        double fuelTotal = fuelPrice * literSold;
        double fuelPriceTotal = fuelTotal - ((fuelTotal * 3) / 100);
        print("O valor a pagar é: R\$ ${fuelPriceTotal.toStringAsFixed(2)}");
      } else {
        double fuelTotal = fuelPrice * literSold;
        double fuelPriceTotal = fuelTotal - ((fuelTotal * 5) / 100);
        print("O valor a pagar é: R\$ ${fuelPriceTotal.toStringAsFixed(2)}");
      }
      break;

    case "G":
      if (literSold <= 20) {
        double fuelTotal = fuelPrice * literSold;
        double fuelPriceTotal = fuelTotal - ((fuelTotal * 4) / 100);
        print("O valor a pagar é: R\$ ${fuelPriceTotal.toStringAsFixed(2)}");
      } else {
        double fuelTotal = fuelPrice * literSold;
        double fuelPriceTotal = fuelTotal - ((fuelTotal * 6) / 100);
        print("O valor a pagar é: R\$ ${fuelPriceTotal.toStringAsFixed(2)}");
      }
      break;
    default:
      print("Tipo de combustível informado não existe!");
  } */

//exercício 6
/*   print("Informe um número de 1 a 12:");
  String inputNumber = stdin.readLineSync(encoding: utf8)!;

  switch (inputNumber) {
    case "1":
      print("Janeiro!");
      break;
    case "2":
      print("Fevereiro!");
      break;
    case "3":
      print("Março!");
      break;
    case "4":
      print("Abril!");
      break;
    case "5":
      print("Maio!");
      break;
    case "6":
      print("Junho!");
      break;
    case "7":
      print("Julho!");
      break;
    case "8":
      print("Agosto!");
      break;
    case "9":
      print("Setembro!");
      break;
    case "10":
      print("Outubro!");
      break;
    case "11":
      print("Novembro!");
      break;
    case "12":
      print("Dezembro!");
      break;
    default:
      print("Número errado!");
  } */

//exercício 7
/*   print("Informe sua altura.");
  double inputHeight = double.parse(stdin.readLineSync()!);

  print("Informe seu sexo - M para Masculino ou F para Feminino");
  String inputGender = stdin.readLineSync(encoding: utf8)!;

  switch (inputGender) {
    case "F":
      double idealWeight = (62.1 * inputHeight) - 44.7;
      print("Seu peso ideal é ${idealWeight.toStringAsFixed(2)}");

      break;
        case "M":
      double idealWeight = (72.7 * inputHeight) - 58;
      print("Seu peso ideal é ${idealWeight.toStringAsFixed(2)}");

      break;
    default:
  } 
*/

/* exercício 8 - Uma loja tem tem uma política de descontos de acordo com o valor da compra do
cliente. Os descontos começam acima dos R$500. A cada 100 reais acima dos R$500,00
o cliente ganha 1% de desconto cumulativo até 25%.
a. Por exemplo: R$500 = 1% || R$600,00 = 2% ... etc...
b. Faça um programa que exiba essa tabela de descontos no seguinte
formato: Valordacompra – porcentagem de desconto – valor final */

  /* print("Informe o valor da compra:");
  double purchaiseValue = double.parse(stdin.readLineSync()!);

  purchaiseValue >= 500;
  double discountValue = 1;
  do {
    double finalValue =
        purchaiseValue - ((purchaiseValue * discountValue) / 100);
    print(
        "VALOR INICIAL R\$ $purchaiseValue - PORCENTAGEM: $discountValue - VALOR FINAL: $finalValue");
  } while (discountValue <= 25); */

//exercício 9 -Faça um programa que receba a idade de dez pessoas e que calcule e mostre a quantidade de pessoas com idade maior ou igual a 18 anos.

/* exercício 10 - Faça um programa que receba a idade de 15 pessoas e que calcule e mostre:
a. A quantidade de pessoas em cada faixa etária
b. A porcentagem de pessoas na primeira e na última faixa etária com relação ao
total de pessoas
• Até 15 anos
• De 16 a 30 anos
• De 31 a 45 anos
• De 46 a 60 anos
• Acima de 60 anos */

// exercício 11 - Escreva um código que recebe um inteiro e mostra os números pares e ímpares (separados), de 1 até esse inteiro.

//exercício 12 - Faça um programa que receba várias idades e que calcule e mostre a média das idades digitadas. Finalize digitando idade igual a zero.

//exercício 13 - Desenvolver um algoritmo que efetue a soma de todos os números ímpares que são múltiplos de três e que se encontram no conjunto dos números de 1 até 500.

//exercício 14 - Escreva um algoritmo que leia um valor inicial A e imprima a seqüência de valores do cálculo de A! (lê-se : A fatorial)e o seu resultado. Ex: 5! = 5 X 4 X 3 X 2 X 1 = 120

//exercício 15 - Leia 15 números e mostre o maior e o menor dos números inseridos.
}
