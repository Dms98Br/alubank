import 'package:alubank/data/bank_http.dart';
import 'package:alubank/data/bank_inherited.dart';
import 'package:alubank/themes/theme_color.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({required this.api, super.key});
  final Future<String> api;
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: ThemeColors.headerGradient,
            ),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 83, 16, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: '\$',
                      children: <TextSpan>[
                        TextSpan(
                          text: BankInherited.of(context)
                              .values
                              .available
                              .toString(),
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Balanço disponível",
                  ),
                ],
              ),
              FutureBuilder(
                future: widget.api,
                //future: BankHttp().dolarToReal(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      return const CircularProgressIndicator();
                    case ConnectionState.waiting:
                      return const CircularProgressIndicator();
                    case ConnectionState.active:
                      // TODO: Handle this case.
                      break;
                    case ConnectionState.done:
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text.rich(
                            TextSpan(
                              text: 'R\$',
                              children: <TextSpan>[
                                TextSpan(
                                    text: snapshot.data.toString(),
                                    style:
                                        Theme.of(context).textTheme.bodyLarge)
                              ],
                            ),
                          ),
                          const Text('Dolar para Real'),
                        ],
                      );
                  }
                  return const Text('Erro na API');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
