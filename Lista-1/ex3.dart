import 'dart:io';

void main(List<String> args) {
  String? opt = 'y';
  while (opt == 'y') {
    print('\nType a number sequence for validation: ');
    List<String> inputList = getInput();
    print('\ninput list: ${inputList}');
    List<int> numberList = inputList.map(int.parse).toList();
    validate(numberList);
    print('\ndo you want to validate another sequence? (press y)');
    opt = stdin.readLineSync();
  }
}

void validate(List<int> numberList) {
  int sum = 0;
  if (numberList.length < 1) {
    print('Invalid sequence, too short input.');
    return;
  }

  for (int i = 0; i < numberList.length; i++) {
    if (i % 2 == 0) {
      numberList[i] *= 2;
      if (numberList[i] > 9) {
        numberList[i] -= 9;
      }
    }
  }
  print('number list after multiplication: ${numberList}');

  for (int number in numberList) {
    sum += number;
  }
  print('sum: ${sum}');
  if (sum % 10 == 0) {
    print('Valid sequence, divisible by 10');
  } else {
    print('Invalid sequence, not divisible by 10');
  }
}

List<String> getInput() {
  var input = stdin.readLineSync();
  List<String> numberList = [];
  if (input != null) {
    numberList = input.toLowerCase().replaceAll(' ', '').split('');
  } else {
    return [''];
  }
  return numberList;
}
// Author: Arthur Miranda