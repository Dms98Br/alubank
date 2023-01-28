import 'package:alubank/components/sections/account_poits.dart';
import 'package:alubank/components/sections/actions_sections.dart';
import 'package:alubank/components/sections/header.dart';
import 'package:alubank/components/sections/recent_activity.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.api});
  final Future<String> api;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(api: this.api),
            const RecentActivity(),
            const AccountActions(),
            const AccountPoints(),
          ],
        ),
      ),
    );
  }
}
