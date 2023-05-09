import 'package:flutter/material.dart';
import '../Models/Numbers_Model.dart';
import '../Wedgits/Number_Wedgit.dart';

class NumbersView extends StatelessWidget {
  const NumbersView({super.key});

  final List<NumbersModel> numData = const [
    NumbersModel(
        image: "assets/images/numbers/number_one.png",
        title: "ichi",
        subtitle: "One",
        audio: "sounds/numbers/number_one_sound.mp3"),
    NumbersModel(
        image: "assets/images/numbers/number_two.png",
        title: "Ni",
        subtitle: "Two",
        audio: "sounds/numbers/number_two_sound.mp3"),
    NumbersModel(
        image: "assets/images/numbers/number_three.png",
        title: "San",
        subtitle: "Three",
        audio: "sounds/numbers/number_three_sound.mp3"),
    NumbersModel(
        image: "assets/images/numbers/number_four.png",
        title: "Shi",
        subtitle: "Four",
        audio: "sounds/numbers/number_four_sound.mp3"),
    NumbersModel(
        image: "assets/images/numbers/number_five.png",
        title: "Go",
        subtitle: "Five",
        audio: "sounds/numbers/number_five_sound.mp3"),
    NumbersModel(
        image: "assets/images/numbers/number_six.png",
        title: "Roku",
        subtitle: "Six",
        audio: "sounds/numbers/number_six_sound.mp3"),
    NumbersModel(
        image: "assets/images/numbers/number_seven.png",
        title: "Sebun",
        subtitle: "Seven",
        audio: "sounds/numbers/number_seven_sound.mp3"),
    NumbersModel(
        image: "assets/images/numbers/number_eight.png",
        title: "Hachi",
        subtitle: "Eight",
        audio: "sounds/numbers/number_eight_sound.mp3"),
    NumbersModel(
        image: "assets/images/numbers/number_nine.png",
        title: "Kyu",
        subtitle: "Nine",
        audio: "sounds/numbers/number_nine_sound.mp3"),
    NumbersModel(
        image: "assets/images/numbers/number_ten.png",
        title: "Ju",
        subtitle: "Ten",
        audio: "sounds/numbers/number_ten_sound.mp3"),
  ];
  static const id = "numbersView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Numbers",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF473128),
        elevation: 0,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: numData.length,
        itemBuilder: (context, index) {
          return NumberItem(numModel: numData[index]);
        },
      ),
    );
  }
}

