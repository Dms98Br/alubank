import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: const [
            Text("\$1000.00"),
            Text("Balanço disponível"),
          ],
        ),
        const Icon(Icons.account_circle)
      ],
    );
  }
}
