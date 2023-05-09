import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../Models/Numbers_Model.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({super.key, required this.numModel});
  final NumbersModel numModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF89333),
      height: 85,
      child: Row(
        children: [
          Container(
            color: const Color(0xFFFFF6DB),
            child: Image.asset(numModel.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "${numModel.title}\n${numModel.subtitle}",
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(numModel.audio));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
