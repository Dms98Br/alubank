import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/data/bank_inherited.dart';
import 'package:alubank/themes/theme_color.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(
          boxContent: _RecentActivity(
        key: Key("recentActivity"),
      )),
    );
  }
}

class _RecentActivity extends StatefulWidget {
  const _RecentActivity({Key? key}) : super(key: key);

  @override
  State<_RecentActivity> createState() => _RecentActivityState();
}

class _RecentActivityState extends State<_RecentActivity> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: ColorDot(color: ThemeColors.recentActivity['spent']),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Saída"),
                      Text(
                        "\$${BankInherited.of(context).values.spent}",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child:
                        ColorDot(color: ThemeColors.recentActivity['income']),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Entrada"),
                      Text(
                        "\$${BankInherited.of(context).values.earned}",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16, bottom: 8),
            child: Text(
                'Limite de gastos \$0'), //TODO:desafio pode ser criar a função que limita deposito e transação baseado nesse limite. E TESTAR
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const LinearProgressIndicator(
              value: 0,
              minHeight: 8,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8),
            child: ContentDivision(),
          ),
          const Text(
              "Este mês você gastou \$1500.00 com jogos. Tente abaixar ess custo"),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Diga-me como!",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
