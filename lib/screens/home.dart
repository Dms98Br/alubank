import 'package:alubank/components/sections/account_poits.dart';
import 'package:alubank/components/sections/actions_sections.dart';
import 'package:alubank/components/sections/header.dart';
import 'package:alubank/components/sections/recent_activity.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Header(),
            RecentActivity(),
            AccountActions(),
            AccountPoints(),
          ],
        ),
      ),
    );
  }
}
