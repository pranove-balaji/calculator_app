import 'package:flutter/material.dart';

class CalculatorButton extends StatefulWidget {
  final String value;
  final String calculated;
  final String input;
  final String operator;
  final Color bgcolor;
  const CalculatorButton(
      {super.key,
      required this.bgcolor,
      required this.calculated,
      required this.input,
      required this.operator,
      required this.value});

  @override
  State<CalculatorButton> createState() => _CalculatorButtonState();
}

class _CalculatorButtonState extends State<CalculatorButton> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    String value = widget.value;
    String calculated = widget.calculated;
    String operator = widget.operator;
    String input = widget.input;
    Color bgcolor = widget.bgcolor;

    return InkWell(
        onTap: () {
          if (value == "clear") {
            setState(() {
              input = "";
              calculated = "";
              operator = "";
            });
          } else if (value == "+" ||
              value == "-" ||
              value == "%" ||
              value == "*") {
            setState(() {
              calculated = input;
              input = "";
              operator = value;
            });
          } else if (value == "=") {
            double calc1 = double.parse(input);
            double calc2 = double.parse(calculated);
            setState(() {
              if (operator == "+") {
                input = (calc1 + calc2).toString();
              } else if (operator == "%") {
                input = (calc2 / calc1).toString();
              } else if (operator == "-") {
                input = (calc2 - calc1).toString();
              } else if (operator == "x") {
                input = (calc1 * calc2).toString();
              }
            });
          } else {
            setState(() {
              input = input + value;
            });
          }
        },
        child: Container(
          margin: EdgeInsets.all(size / 8),
          alignment: Alignment.center,
          height: size,
          width: size,
          decoration: BoxDecoration(
              color: bgcolor, borderRadius: BorderRadius.circular(100)),
          child: Text(
            value,
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
        ));
  }
}
