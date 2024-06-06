import 'package:calculator1/components/button_calculator.dart';
import 'package:calculator1/models/calculator_model.dart';
import 'package:flutter/material.dart';

class LayoutCalculator extends StatelessWidget {
  final List<CalculatorModel> data;

  const LayoutCalculator({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: data.map((e) {
          return ButtonCalculator(
            text: e.text,
            textColor: e.textColor,
            decorationColor: e.decorationColor,
            onPressed: e.onPressed,
          );
        }).toList(),
      ),
    );
  }
}
