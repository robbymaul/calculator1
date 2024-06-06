String calculate(dynamic firstNumber, dynamic secondNumber, String? operan) {
  switch (operan) {
    case '+':
      var result = firstNumber + secondNumber;
      return result.toString();
    case '-':
      var result = firstNumber - secondNumber;
      return result.toString();
    case '*':
      var result = firstNumber * secondNumber;
      return result;
    case '/':
      if (secondNumber == 0) {
        return 0.toString();
      }
      var result = firstNumber / secondNumber;
      String temp;
      var result2 = result.toString();
      var stringSplit = result2.split('.');
      if (stringSplit[1] == '0') {
        temp = stringSplit[0];
      } else {
        temp = result.toString();
      }
      return temp;
    case '%':
      var result = firstNumber % secondNumber;
      return result.toString();
    default:
      return firstNumber.toString();
  }
}

int calculateAddition(operation, int parse) {
  var result = operation + parse;
  return result;
}

int calculateSubtraction(operation, int parse) {
  var result = operation - parse;
  return result;
}

dynamic calculateMultiplication(operation, int parse) {
  var result = operation * parse;
  return result;
}

dynamic calculateModulo(operation, int parse) {
  var result = operation % parse;
  return result;
}

dynamic calculateDivision(operation, int parse) {
  var result = operation / parse;
  return result;
}
