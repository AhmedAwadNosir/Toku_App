import 'package:flutter/material.dart';
import 'package:tokuapp/Pages_Views/Colors_View.dart';
import 'package:tokuapp/Pages_Views/Family_Members_View.dart';
import 'package:tokuapp/Pages_Views/Numbers_View.dart';
import 'package:tokuapp/Pages_Views/Phrases_View.dart';

import '../Models/Category_Model.dart';
import '../Wedgits/Category_Wedgit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<CategoryModel> categoryItem = const [
    CategoryModel(
        name: "Numbers", color: Color(0xFFF89333), distination:NumbersView.id),
    CategoryModel(
        name: "Members",
        color: Color(0xFF517F32),
        distination: FamilyMembresView.id),
    CategoryModel(
        name: "Colors", color: Color(0xFF7C3F9F), distination:ColorsView.id),
    CategoryModel(
        name: "Phrases", color: Color(0xFF46A4C9), distination: PhrasesView.id),
  ];
  static const id = "homeViews";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Toku"),
          backgroundColor: const Color(0xFF473128),
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: categoryItem.length,
          itemBuilder: (context, index) {
            return categoryWedgit(categoryModel: categoryItem[index]);
          },
        ));
  }
}
