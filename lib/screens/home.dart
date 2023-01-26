import 'package:alubank/components/sections/box_card.dart';
import 'package:alubank/components/sections/header/header.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Header(),
          BoxCard(
            boxContent: Text('Olá mundo'),
          ),
        ],
      ),
    );
  }
}
