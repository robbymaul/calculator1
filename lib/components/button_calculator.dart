import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ButtonCalculator extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color? decorationColor;
  final VoidCallback onPressed;

  const ButtonCalculator(
      {super.key,
      required this.text,
      required this.textColor,
      required this.decorationColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: decorationColor),
          onPressed: onPressed,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: decorationColor,
            ),
            child: Center(
                child: Text(
              text,
              style: TextStyle(color: textColor, fontSize: 20),
            )),
          ),
        ),
      ),
    );
  }
}
