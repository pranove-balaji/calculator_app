// home.dart
import 'package:flutter/material.dart';
import 'package:testsd/data/calc_logic.dart';
import 'package:testsd/widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CalculatorLogic calculator =
      CalculatorLogic(); // Create a logic instance

  double size = 0;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size.width / 6;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomRight,
              child: Text(
                calculator.input,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: size),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    CalculatorButton(
                        value: "7",
                        bgcolor: Colors.white38,
                        onTap: onButtonTap),
                    CalculatorButton(
                        value: "8",
                        bgcolor: Colors.white38,
                        onTap: onButtonTap),
                    CalculatorButton(
                        value: "9",
                        bgcolor: Colors.white38,
                        onTap: onButtonTap),
                    CalculatorButton(
                        value: "x",
                        bgcolor: Color.fromARGB(115, 103, 102, 102),
                        onTap: onButtonTap)
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton(
                        value: "6",
                        bgcolor: Colors.white38,
                        onTap: onButtonTap),
                    CalculatorButton(
                        value: "5",
                        bgcolor: Colors.white38,
                        onTap: onButtonTap),
                    CalculatorButton(
                        value: "4",
                        bgcolor: Colors.white38,
                        onTap: onButtonTap),
                    CalculatorButton(
                        value: "+",
                        bgcolor: Color.fromARGB(115, 103, 102, 102),
                        onTap: onButtonTap)
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton(
                        value: "3",
                        bgcolor: Colors.white38,
                        onTap: onButtonTap),
                    CalculatorButton(
                        value: "2",
                        bgcolor: Colors.white38,
                        onTap: onButtonTap),
                    CalculatorButton(
                        value: "1",
                        bgcolor: Colors.white38,
                        onTap: onButtonTap),
                    CalculatorButton(
                        value: "-",
                        bgcolor: Color.fromARGB(115, 103, 102, 102),
                        onTap: onButtonTap)
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton(
                        value: "0",
                        bgcolor: Colors.white38,
                        onTap: onButtonTap),
                    CalculatorButton(
                        value: ".",
                        bgcolor: Colors.white38,
                        onTap: onButtonTap),
                    CalculatorButton(
                        value: "=",
                        bgcolor: Colors.white38,
                        onTap: onButtonTap),
                    CalculatorButton(
                        value: "%",
                        bgcolor: Color.fromARGB(115, 103, 102, 102),
                        onTap: onButtonTap)
                  ],
                ),
                CalculatorButton(
                    value: "clear", bgcolor: Colors.black, onTap: onButtonTap)
              ],
            )
          ],
        ),
      ),
    );
  }

  void onButtonTap(String value) {
    setState(() {
      if (value == "clear") {
        calculator.clear();
      } else if (value == "+" || value == "-" || value == "%" || value == "x") {
        calculator.handleOperator(value);
      } else if (value == "=") {
        calculator.calculate();
      } else {
        calculator.appendValue(value);
      }
    });
  }
}
