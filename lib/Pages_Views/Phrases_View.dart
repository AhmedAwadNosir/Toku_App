import 'package:flutter/material.dart';
import '../Models/PhrasesModel.dart';
import '../Wedgits/Phrases_Wedgit.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});
  static const id = "PhrasesView";
  final List<PhrasesModel> phrasesItem = const [
    PhrasesModel(
      title: "Ködoku suru koto o wasurenaide kudasai",
      subTitle: "dont forget to subscribe",
      audio: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    PhrasesModel(
      title: "Watashi wa puroguramingu ga daisukidesu",
      subTitle: "i love programming",
      audio: "sounds/phrases/i_love_programming.wav",
    ),
    PhrasesModel(
      title: "Puroguramingu wa kantandesu",
      subTitle: "programming is easy",
      audio: "sounds/phrases/programming_is_easy.wav",
    ),
    PhrasesModel(
      title: "Doko ni iku no",
      subTitle: "where are you going",
      audio: "sounds/phrases/where_are_you_going.wav",
    ),
    PhrasesModel(
      title: "Namae wa nandesu ka",
      subTitle: "what is your name?",
      audio: "sounds/phrases/what_is_your_name.wav",
    ),
    PhrasesModel(
      title: "Watashi wa anime ga daisukidesu",
      subTitle: "i love anime",
      audio: "sounds/phrases/i_love_anime.wav",
    ),
    PhrasesModel(
      title: "Go kibun wa ikagadesu ka",
      subTitle: "how are you feeling?",
      audio: "sounds/phrases/how_are_you_feeling.wav",
    ),
    PhrasesModel(
      title: "WKimasu ka",
      subTitle: "are you coming?",
      audio: "sounds/phrases/yes_im_coming.wav",
    ),
    PhrasesModel(
      title: "Doko ni iku no",
      subTitle: "where are you going",
      audio: "sounds/phrases/where_are_you_going.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF473128),
        title: const Text(
          "Phrases",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrasesItem.length,
        itemBuilder: (context, index) {
          return PhrasesWedgit(phrasesModel: phrasesItem[index]);
        },
      ),
    );
  }
}
