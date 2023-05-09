import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../Models/PhrasesModel.dart';

class PhrasesWedgit extends StatelessWidget {
  const PhrasesWedgit({super.key, required this.phrasesModel});
  final PhrasesModel phrasesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF4FADC7),
      height: 85,
      child: Row(
        children: [
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "${phrasesModel.title}\n${phrasesModel.subTitle}",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(phrasesModel.audio));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
