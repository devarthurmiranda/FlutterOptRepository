import 'dart:io';

void main(List<String> args) {
  String? opt = 'y';
  while (opt == 'y') {
    print('\nType your word: ');
    List<String> inputList = getInput();
    print('input list: ${inputList}');
    int result = scabble(inputList);
    print('scabble pontuation: ${result}');
    print('\ndo you want to type another word? (press y)');
    opt = stdin.readLineSync();
  }
}

List<String> getInput() {
  var input = stdin.readLineSync();
  List<String> letterList = [];
  if (input != null) {
    letterList = input.toLowerCase().split('');
  } else {
    return [''];
  }
  return letterList;
}

int scabble(inputList) {
  List<String> listOne = ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'];
  List<String> listTwo = ['d', 'g'];
  List<String> listThree = ['b', 'c', 'm', 'p'];
  List<String> listFour = ['f', 'h', 'v', 'w', 'y'];
  List<String> listFive = ['k'];
  List<String> listEight = ['j', 'x'];
  List<String> listTen = ['q', 'z'];
  int result = 0;
  for (String letter in inputList) {
    if (listOne.contains(letter)) {
      result += 1;
    }
    if (listTwo.contains(letter)) {
      result += 2;
    }
    if (listThree.contains(letter)) {
      result += 3;
    }
    if (listFour.contains(letter)) {
      result += 4;
    }
    if (listFive.contains(letter)) {
      result += 5;
    }
    if (listEight.contains(letter)) {
      result += 8;
    }
    if (listTen.contains(letter)) {
      result += 10;
    }
  }
  return result;
}
// Author: Arthur Miranda