import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    double size = 0;
  String input = "";
  String calculated = "";
  String operator = "";

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
                input,
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
                    calcbutton("7", Colors.white38),
                    calcbutton("8", Colors.white38),
                    calcbutton("9", Colors.white38),
                    calcbutton("x", const Color.fromARGB(115, 103, 102, 102))
                  ],
                ),
                Row(
                  children: [
                    calcbutton("6", Colors.white38),
                    calcbutton("5", Colors.white38),
                    calcbutton("4", Colors.white38),
                    calcbutton("+", const Color.fromARGB(115, 103, 102, 102))
                  ],
                ),
                Row(
                  children: [
                    calcbutton("3", Colors.white38),
                    calcbutton("2", Colors.white38),
                    calcbutton("1", Colors.white38),
                    calcbutton("-", const Color.fromARGB(115, 103, 102, 102))
                  ],
                ),
                Row(
                  children: [
                    calcbutton("0", Colors.white38),
                    calcbutton(".", Colors.white38),
                    calcbutton("=", Colors.white38),
                    calcbutton("%", const Color.fromARGB(115, 103, 102, 102))
                  ],
                ),
                calcbutton("clear", Colors.black)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget calcbutton(String value, Color bgcolor) {
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