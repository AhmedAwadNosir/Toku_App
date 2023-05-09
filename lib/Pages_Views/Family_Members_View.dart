import 'package:flutter/material.dart';

import '../Models/Family_Members_Model.dart';
import '../Wedgits/Family_Members_Wedgit.dart';

class FamilyMembresView extends StatelessWidget {
  const FamilyMembresView({super.key});
  final List<FamilyMembersModel> familtyMembersitem = const [
    FamilyMembersModel(
      image: "assets/images/family_members/family_father.png",
      title: "Chichioya",
      subtitle: "Father",
      audio: "sounds/family_members/father.wav",
    ),
    FamilyMembersModel(
      image: "assets/images/family_members/family_daughter.png",
      title: "Musume",
      subtitle: "Daughter",
      audio: "sounds/family_members/daughter.wav",
    ),
    FamilyMembersModel(
      image: "assets/images/family_members/family_grandfather.png",
      title: "Ojtsan",
      subtitle: "Grand Father",
      audio: "sounds/family_members/grand_father.wav",
    ),
    FamilyMembersModel(
      image: "assets/images/family_members/family_mother.png",
      title: "Hahoaya",
      subtitle: "Mother",
      audio: "sounds/family_members/mother.wav",
    ),
    FamilyMembersModel(
      image: "assets/images/family_members/family_grandmother.png",
      title: "Sobo",
      subtitle: "Grand Mother",
      audio: "sounds/family_members/grand_mother.wav",
    ),
    FamilyMembersModel(
      image: "assets/images/family_members/family_older_brother.png",
      title: "Ntsan",
      subtitle: "Older Brother",
      audio: "sounds/family_members/older_bother.wav",
    ),
    FamilyMembersModel(
      image: "assets/images/family_members/family_older_sister.png",
      title: "Ane",
      subtitle: "Older Sister",
      audio: "sounds/family_members/older_sister.wav",
    ),
    FamilyMembersModel(
      image: "assets/images/family_members/family_son.png",
      title: "Musuko",
      subtitle: "Son",
      audio: "sounds/family_members/son.wav",
    ),
    FamilyMembersModel(
      image: "assets/images/family_members/family_younger_brother.png",
      title: "Ototo",
      subtitle: "Younger Brother",
      audio: "sounds/family_members/younger_brohter.wav",
    ),
    FamilyMembersModel(
      image: "assets/images/family_members/family_younger_sister.png",
      title: "Imoto",
      subtitle: "Younger Sister",
      audio: "sounds/family_members/younger_sister.wav",
    ),
  ];
  static const id = "FamilyMembersView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Faimly Members",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF473128),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: familtyMembersitem.length,
        itemBuilder: (context, index) {
          return familyMembersWedgit(familyModel: familtyMembersitem[index]);
        },
      ),
    );
  }
}
