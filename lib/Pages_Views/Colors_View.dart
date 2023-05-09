import 'package:flutter/material.dart';

import '../Models/Colors_Model.dart';
import '../Wedgits/Colors_Wedgit.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key});
  static const id = "ColorsView";
  final List<ColorsModel> colorsItem = const [
    ColorsModel(
      image: "assets/images/colors/color_black.png",
      title: "Burakkuu",
      subTitle: "Black",
      audio: "sounds/colors/black.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_brown.png",
      title: "Chairo",
      subTitle: "brown",
      audio: "sounds/colors/brown.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_dusty_yellow.png",
      title: "Hokori ppoi kiiro",
      subTitle: "dusty yellow",
      audio: "sounds/colors/dusty_yellow.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_gray.png",
      title: "Gure",
      subTitle: "gray",
      audio: "sounds/colors/gray.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_green.png",
      title: "Midori",
      subTitle: "green",
      audio: "sounds/colors/green.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_red.png",
      title: "Aka",
      subTitle: "red",
      audio: "sounds/colors/red.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_white.png",
      title: "Shiroi",
      subTitle: "white",
      audio: "sounds/colors/white.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/yellow.png",
      title: "Kirro",
      subTitle: "yellow",
      audio: "sounds/colors/yellow.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_black.png",
      title: "Burakkuu",
      subTitle: "Black",
      audio: "sounds/colors/black.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_red.png",
      title: "Aka",
      subTitle: "red",
      audio: "sounds/colors/red.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF473128),
        title: const Text(
          "Colors",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colorsItem.length,
        itemBuilder: (context, index) {
          return ColorsWedgit(colorsModel: colorsItem[index]);
        },
      ),
    );
  }
}
