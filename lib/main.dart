import 'package:flutter/material.dart';
import 'package:testsd/screen/home.dart';

void main() {
  runApp(const MainApp());
}
/// What is a Widget ? [Widget]
  /// What is Widget Tree ?
  /// What is StatefulWidget ? [StatefulWidget]
  /// What is StatelessWidget ? [StatelessWidget]
  /// Lifecycle of StatelessWidget and StatefulWidget ?
  /// What is a BuildContext ? [BuildContext]
  /// What is the starting or entry point of a flutter application ?
  /// What is the starting or entry point of a dart application ?
  /// What is a Material App ? [MaterialApp]
  /// What is the difference between a MaterialApp and CupertinoApp ?

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
