import 'package:flutter/material.dart';
import 'package:tokuapp/core/app_text_style.dart';
import 'package:tokuapp/features/members/models/item_model.dart';
import 'package:tokuapp/features/members/widgets/item.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});
  final List<ItemModel> members = const [
    ItemModel(
      imagePath: "assets/images/family_members/family_father.png",
      jpName: 'Chichioya',
      enName: 'father',
      sound: "sounds/family_members/father.wav",
    ),
    ItemModel(
      imagePath: "assets/images/family_members/family_daughter.png",
      jpName: 'Musume',
      enName: 'daughter',
      sound: "sounds/family_members/daughter.wav",
    ),
    ItemModel(
      imagePath: "assets/images/family_members/family_grandfather.png",
      jpName: 'Ojiisan',
      enName: 'grand father',
      sound: "sounds/family_members/grand%20father.wav",
    ),
    ItemModel(
      imagePath: "assets/images/family_members/family_grandmother.png",
      jpName: 'Sobo',
      enName: 'grand mother',
      sound: "sounds/family_members/grand%20mother.wav",
    ),
    ItemModel(
      imagePath: "assets/images/family_members/family_mother.png",
      jpName: 'Haha',
      enName: 'mother',
      sound: "sounds/family_members/mother.wav",
    ),
    ItemModel(
      imagePath: "assets/images/family_members/family_older_brother.png",
      jpName: 'Onii-san',
      enName: 'older brother',
      sound: "sounds/family_members/older%20bother.wav",
    ),
    ItemModel(
      imagePath: "assets/images/family_members/family_older_sister.png",
      jpName: 'Ane',
      enName: 'older sister',
      sound: "sounds/family_members/older%20sister.wav",
    ),
    ItemModel(
      imagePath: "assets/images/family_members/family_son.png",
      jpName: 'Musuko',
      enName: 'son',
      sound: "sounds/family_members/son.wav",
    ),
    ItemModel(
      imagePath: "assets/images/family_members/family_younger_brother.png",
      jpName: 'Otōto',
      enName: 'younger brother',
      sound: "sounds/family_members/younger%20brohter.wav",
    ),
    ItemModel(
      imagePath: "assets/images/family_members/family_younger_sister.png",
      jpName: 'Imōto',
      enName: 'younger sister',
      sound: "sounds/family_members/younger%20sister.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 25, color: Colors.white),
        ),
        backgroundColor: Color(0xff49332A),
        title: Text('Family Members', style: AppTextStyle.heading),
      ),

      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return Item(
            itemModel: members[index],
            containerColor: Color(0xff528031),
          );
        },
      ),
    );
  }
}
