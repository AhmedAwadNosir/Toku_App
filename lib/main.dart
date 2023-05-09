import 'package:flutter/material.dart';
import 'package:tokuapp/Pages_Views/Colors_View.dart';
import 'package:tokuapp/Pages_Views/Family_Members_View.dart';
import 'package:tokuapp/Pages_Views/Numbers_View.dart';
import 'package:tokuapp/Pages_Views/Phrases_View.dart';

import 'Pages_Views/Home_View.dart';

void main() {
  runApp(const Toku_App());
}

class Toku_App extends StatelessWidget {
  const Toku_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        HomeView.id: (context) => const HomeView(),
        NumbersView.id:(context) => NumbersView(),
        FamilyMembresView.id:(context) => FamilyMembresView(),
        ColorsView.id:(context) => ColorsView(),
        PhrasesView.id:(context) => PhrasesView()
      },
      initialRoute: HomeView.id,
    );
  }
}
