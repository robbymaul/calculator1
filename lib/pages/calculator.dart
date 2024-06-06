import 'package:calculator1/components/layout_calculator.dart';
import 'package:calculator1/models/calculator_model.dart';
import 'package:calculator1/utils/calculator_function.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _ButtonLayoutState();
}

class _ButtonLayoutState extends State<Calculator> {
  final TextEditingController _controller = TextEditingController();

  List<dynamic> operation = [];
  String? operan;

  void _additionButton() {
    setState(() {
      if (_controller.text.isEmpty && operation.isEmpty) {
        _controller.text = '0';
        return;
      } else if (_controller.text.isNotEmpty &&
          operation.isEmpty &&
          _controller.text == '0') {
        _controller.text = '0';
        return;
      } else if (_controller.text.isNotEmpty &&
          operation.isEmpty &&
          _controller.text != '0') {
        operation.add(int.parse(_controller.text));
        operation.add('+');
        operan = '+';
        _controller.clear();
        return;
      } else if ((_controller.text.isEmpty || _controller.text == '0') &&
          operation.isNotEmpty &&
          operan != "/") {
        _controller.text = operation[0].toString();
        operation.clear();
        return;
      } else if (_controller.text.isNotEmpty && operation.isNotEmpty) {
        if (operation[1] == '+') {
          int result =
              calculateAddition(operation[0], int.parse(_controller.text));
          _controller.text = result.toString();
          operation.clear();
          operan = null;
          return;
        } else {
          var result =
              calculate(operation[0], int.parse(_controller.text), operan);
          _controller.text = result.toString();
          operation.clear();
          operan = null;
          return;
        }
      }
    });
  }

  void _subtractionButton() {
    setState(() {
      if (_controller.text.isEmpty && operation.isEmpty) {
        _controller.text = '0';
        return;
      } else if (_controller.text.isNotEmpty &&
          operation.isEmpty &&
          _controller.text == '0') {
        _controller.text = '0';
        return;
      } else if (_controller.text.isNotEmpty &&
          operation.isEmpty &&
          _controller.text != '0') {
        operation.add(int.parse(_controller.text));
        operation.add('-');
        operan = '-';
        _controller.clear();
        return;
      } else if ((_controller.text.isEmpty || _controller.text == '0') &&
          operation.isNotEmpty &&
          operan != "/") {
        _controller.text = operation[0].toString();
        operation.clear();
        return;
      } else if (_controller.text.isNotEmpty && operation.isNotEmpty) {
        if (operation[1] == '-') {
          int result =
              calculateSubtraction(operation[0], int.parse(_controller.text));
          _controller.text = result.toString();
          operation.clear();
          return;
        } else {
          var result =
              calculate(operation[0], int.parse(_controller.text), operan);
          _controller.text = result.toString();
          operation.clear();
          operan = null;
          return;
        }
      }
    });
  }

  void _multiplicationButton() {
    setState(() {
      if (_controller.text.isEmpty && operation.isEmpty) {
        _controller.text = '0';
        return;
      } else if (_controller.text.isNotEmpty &&
          operation.isEmpty &&
          _controller.text == '0') {
        _controller.text = '0';
        return;
      } else if (_controller.text.isNotEmpty &&
          operation.isEmpty &&
          _controller.text != '0') {
        operation.add(int.parse(_controller.text));
        operation.add('*');
        operan = '*';
        _controller.clear();
        return;
      } else if ((_controller.text.isEmpty || _controller.text == '0') &&
          operation.isNotEmpty &&
          operan != "/") {
        _controller.text = operation[0].toString();
        operation.clear();
        return;
      } else if (_controller.text.isNotEmpty && operation.isNotEmpty) {
        if (operation[1] == '*') {
          int result = calculateMultiplication(
              operation[0], int.parse(_controller.text));
          _controller.text = result.toString();
          operation.clear();
          return;
        } else {
          var result =
              calculate(operation[0], int.parse(_controller.text), operan);
          _controller.text = result.toString();
          operation.clear();
          operan = null;
          return;
        }
      }
    });
  }

  void _divisionButton() {
    setState(() {
      if (_controller.text == '0') {
        _controller.text = '0';
        operation.clear();
        operan = null;
        return;
      }

      if (_controller.text.isEmpty && operation.isEmpty) {
        _controller.text = '0';
        return;
      } else if (_controller.text.isNotEmpty &&
          operation.isEmpty &&
          _controller.text == '0') {
        _controller.text = '0';
        return;
      } else if (_controller.text.isNotEmpty &&
          operation.isEmpty &&
          _controller.text != '0') {
        operation.add(int.parse(_controller.text));
        operation.add('/');
        operan = '/';
        _controller.clear();
        return;
      } else if ((_controller.text.isEmpty || _controller.text == '0') &&
          operation.isNotEmpty) {
        _controller.text = operation[0].toString();
        operation.clear();
        return;
      } else if (_controller.text.isNotEmpty && operation.isNotEmpty) {
        if (operation[1] == '/') {
          dynamic result =
              calculateDivision(operation[0], int.parse(_controller.text));

          String temp;
          var result2 = result.toString();
          var stringSplit = result2.split('.');
          if (stringSplit[1] == '0') {
            temp = stringSplit[0];
          } else {
            temp = result.toString();
          }
          _controller.text = temp;
          operation.clear();
          return;
        } else {
          String result =
              calculate(operation[0], int.parse(_controller.text), operan);
          _controller.text = result.toString();
          operation.clear();
          operan = null;
          return;
        }
      }
    });
  }

  void _moduloButton() {
    setState(() {
      if (_controller.text.isEmpty && operation.isEmpty) {
        _controller.text = '0';
        return;
      } else if (_controller.text.isNotEmpty &&
          operation.isEmpty &&
          _controller.text == '0') {
        _controller.text = '0';
        return;
      } else if (_controller.text.isNotEmpty &&
          operation.isEmpty &&
          _controller.text != '0') {
        operation.add(int.parse(_controller.text));
        operation.add('%');
        operan = '%';
        _controller.clear();
        return;
      } else if ((_controller.text.isEmpty || _controller.text == '0') &&
          operation.isNotEmpty &&
          operan != "/") {
        _controller.text = operation[0].toString();
        operation.clear();
        return;
      } else if (_controller.text.isNotEmpty && operation.isNotEmpty) {
        if (operation[1] == '%') {
          int result =
              calculateModulo(operation[0], int.parse(_controller.text));
          _controller.text = result.toString();
          operation.clear();
          return;
        } else {
          var result =
              calculate(operation[0], int.parse(_controller.text), operan);
          _controller.text = result.toString();
          operation.clear();
          operan = null;
          return;
        }
      }
    });
  }

  void _appendToTextField(String text) {
    setState(() {
      if (_controller.text.contains('.') && text == '.') {
        return;
      }

      if (_controller.text.isEmpty && text == '.') {
        _controller.text = '0.';
        return;
      }

      if (_controller.text == '0') {
        if (text == '.') {
          _controller.text += text;
          return;
        }
        _controller.clear();
        _controller.text = text;
        return;
      }
      _controller.text += text;
    });
  }

  void _handleDelete() {
    setState(() {
      if (_controller.text.isNotEmpty) {
        _controller.text =
            _controller.text.substring(0, _controller.text.length - 1);
      }
    });
  }

  void _equalHandler() {
    setState(() {
      if (_controller.text.isEmpty && operation.isEmpty) {
        _controller.clear();
        return;
      } else if ((_controller.text.isNotEmpty && _controller.text == '0') &&
          operation.isEmpty) {
        _controller.text = '0';
        return;
      } else if (_controller.text.isNotEmpty &&
          _controller.text != '0' &&
          operation.isEmpty) {
        return;
      } else if (operation.isNotEmpty) {
        if ((_controller.text.isEmpty || _controller.text == '0') &&
            operan != '/') {
          _controller.text = operation[0].toString();
          operation.clear();
          return;
        } else {
          var operan = operation[1].toString();
          switch (operan) {
            case '+':
              var result = operation[0] + int.parse(_controller.text);
              _controller.text = result.toString();
              operation.clear();
              return;
            case '-':
              var result = operation[0] - int.parse(_controller.text);
              _controller.text = result.toString();
              operation.clear();
              return;
            case '*':
              var result = operation[0] * int.parse(_controller.text);
              _controller.text = result.toString();
              operation.clear();
              return;
            case '/':
              if (_controller.text == '0') {
                _controller.text = '0';
                operation.clear();
                return;
              }
              String temp;
              var result = operation[0] / int.parse(_controller.text);
              var result2 = result.toString();
              var stringSplit = result2.split('.');
              if (stringSplit[1] == '0') {
                temp = stringSplit[0];
              } else {
                temp = result.toString();
              }
              _controller.text = temp;
              operation.clear();
              return;
            case '%':
              var result = operation[0] % int.parse(_controller.text);
              _controller.text = result.toString();
              operation.clear();
              return;
            default:
              return;
          }
        }
      }
    });
  }

  void _handleClear() {
    setState(() {
      operation.clear();
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    controller: _controller,
                    readOnly: true,
                    keyboardType: TextInputType.number,
                    // inputFormatters: <TextInputFormatter>[
                    //   FilteringTextInputFormatter.digitsOnly,
                    //   FilteringTextInputFormatter.singleLineFormatter
                    // ],
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                )
              ],
            )),
            Expanded(
                child: Column(
              children: [
                LayoutCalculator(data: [
                  CalculatorModel(
                      'DEL', Colors.white, Colors.deepOrange, _handleDelete),
                  CalculatorModel(
                      'C', Colors.white, Colors.green[500], _handleClear),
                  CalculatorModel(
                      '%', Colors.white, Colors.deepPurple, _moduloButton),
                  CalculatorModel(
                      '/', Colors.white, Colors.deepPurple, _divisionButton),
                ]),
                LayoutCalculator(data: [
                  CalculatorModel('7', Colors.deepPurple, Colors.white,
                      () => _appendToTextField('7')),
                  CalculatorModel('8', Colors.deepPurple, Colors.white,
                      () => _appendToTextField('8')),
                  CalculatorModel('9', Colors.deepPurple, Colors.white,
                      () => _appendToTextField('9')),
                  CalculatorModel('x', Colors.white, Colors.deepPurple,
                      _multiplicationButton),
                ]),
                LayoutCalculator(data: [
                  CalculatorModel('4', Colors.deepPurple, Colors.white,
                      () => _appendToTextField('4')),
                  CalculatorModel('5', Colors.deepPurple, Colors.white,
                      () => _appendToTextField('5')),
                  CalculatorModel('6', Colors.deepPurple, Colors.white,
                      () => _appendToTextField('6')),
                  CalculatorModel(
                      '-', Colors.white, Colors.deepPurple, _subtractionButton),
                ]),
                LayoutCalculator(data: [
                  CalculatorModel('1', Colors.deepPurple, Colors.white,
                      () => _appendToTextField('1')),
                  CalculatorModel('2', Colors.deepPurple, Colors.white,
                      () => _appendToTextField('2')),
                  CalculatorModel('3', Colors.deepPurple, Colors.white,
                      () => _appendToTextField('3')),
                  CalculatorModel(
                      '+', Colors.white, Colors.deepPurple, _additionButton),
                ]),
                LayoutCalculator(data: [
                  CalculatorModel('0', Colors.deepPurple, Colors.white,
                      () => _appendToTextField('0')),
                  CalculatorModel('.', Colors.deepPurple, Colors.white,
                      () => _appendToTextField('.')),
                  CalculatorModel(
                      'ANs', Colors.deepPurple, Colors.white, () {}),
                  CalculatorModel(
                      '=', Colors.white, Colors.deepPurple, _equalHandler),
                ]),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
