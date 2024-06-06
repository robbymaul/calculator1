import 'package:flutter/material.dart';

class CalculatorModel {
  final String text;
  final Color textColor;
  final Color? decorationColor;
  final VoidCallback onPressed;

  const CalculatorModel(
    this.text,
    this.textColor,
    this.decorationColor,
    this.onPressed,
  );
}
