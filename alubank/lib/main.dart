import 'package:alubank/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AluBank());
}

class AluBank extends StatelessWidget {
  const AluBank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AluBank",
      home: Home(),
    );
  }
}
