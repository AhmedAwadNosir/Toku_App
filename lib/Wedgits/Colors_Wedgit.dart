import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../Models/Colors_Model.dart';

class ColorsWedgit extends StatelessWidget {
  const ColorsWedgit({super.key, required this.colorsModel});
  final ColorsModel colorsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF7C3F9F),
      height: 85,
      child: Row(
        children: [
          Container(
            color: const Color(0xFFFFF6DB),
            child: Image.asset(colorsModel.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "${colorsModel.title}\n${colorsModel.subTitle}",
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(
                AssetSource(colorsModel.audio),
              );
            },
            icon: const Icon(
              color: Colors.white,
              Icons.play_arrow,
            ),
          ),
        ],
      ),
    );
  }
}
