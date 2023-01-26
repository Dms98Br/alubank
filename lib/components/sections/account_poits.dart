import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_color.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              "Pontos totais",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const BoxCard(boxContent: _AccountPoints()),
        ],
      ),
    );
  }
}

class _AccountPoints extends StatelessWidget {
  const _AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Pontos totais:"),
        Text(
          "3000",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: ContentDivision(),
        ),
        const Text("Objetivos:"),
        _ItemPoints(
          color: ThemeColors.recentActivity['delivery'],
          text: ' Entrega grátis: 1500pts',
        ),
        _ItemPoints(
          color: ThemeColors.recentActivity['streaming'],
          text: " 1 mês de streaming: 30000pts",
        ),
      ],
    );
  }
}

class _ItemPoints extends StatelessWidget {
  final Color? color;
  final String text;
  const _ItemPoints({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          ColorDot(color: color),
          Text(text),
        ],
      ),
    );
  }
}
