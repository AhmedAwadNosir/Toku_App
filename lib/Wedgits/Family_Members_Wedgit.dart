import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../Models/Family_Members_Model.dart';

class familyMembersWedgit extends StatelessWidget {
  const familyMembersWedgit({super.key, required this.familyModel});
  final FamilyMembersModel familyModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF548836),
      height: 85,
      child: Row(
        children: [
          Container(
            color: const Color(0xFFFFF6DB),
            child: Image.asset(familyModel.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "${familyModel.title}\n${familyModel.subtitle}",
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(familyModel.audio));
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
