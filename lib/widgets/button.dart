// button.dart
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String value;
  final Color bgcolor;
  final Function(String) onTap; // New callback for onTap

  const CalculatorButton({
    super.key,
    required this.value,
    required this.bgcolor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width / 4; // Adjust button size

    return InkWell(
      onTap: () => onTap(value), // Pass the button value to onTap callback
      child: Container(
        margin: EdgeInsets.all(size / 8),
        alignment: Alignment.center,
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          value,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
