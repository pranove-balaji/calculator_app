import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  final String calculatorInput;  //final-runtime constant.
  final double size;
  const ResultBox( //const-compile time constant.
      {super.key, required this.calculatorInput, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: Text(
        calculatorInput,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: size),
      ),
    );
  }
}
