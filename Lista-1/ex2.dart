import 'dart:io';

void main(List<String> args) {
  String? opt = 'y';
  String result = '';
  var cores = new Map();
  cores['preto'] = '0';
  cores['marrom'] = '1';
  cores['vermelho'] = '2';
  cores['laranja'] = '3';
  cores['amarelo'] = '4';
  cores['verde'] = '5';
  cores['azul'] = '6';
  cores['violeta'] = '7';
  cores['cinza'] = '8';
  cores['branco'] = '9';
  while (opt == 'y') {
    print('\nDigite a cor: ${cores}');
    String? input = stdin.readLineSync();
    if (input != null && result.length < 2) {
      result += cores[input];
    }
    print('\nDeseja digitar outra cor? (insira y)');
    opt = stdin.readLineSync();
  }
  print('Valor(es) do(s) resistor(es): ${result}');
}
// Author: Arthur Miranda