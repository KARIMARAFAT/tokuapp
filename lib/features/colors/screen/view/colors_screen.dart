import 'package:flutter/material.dart';
import 'package:tokuapp/core/app_text_style.dart';
import 'package:tokuapp/features/members/models/item_model.dart';
import 'package:tokuapp/features/members/widgets/item.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});
  final List<ItemModel> members = const [
    ItemModel(
      imagePath: "assets/images/colors/color_black.png",
      jpName: 'Burakku',
      enName: 'black',
      sound: "sounds/colors/black.wav",
    ),
    ItemModel(
      imagePath: "assets/images/colors/color_brown.png",
      jpName: 'Chairo',
      enName: 'brown',
      sound: "sounds/colors/brown.wav",
    ),
    ItemModel(
      imagePath: "assets/images/colors/color_dusty_yellow.png",
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      sound: "sounds/colors/dusty%20yellow.wav",
    ),
    ItemModel(
      imagePath: "assets/images/colors/color_gray.png",
      jpName: 'Gurē',
      enName: 'gray',
      sound: "sounds/colors/gray.wav",
    ),
    ItemModel(
      imagePath: "assets/images/colors/color_green.png",
      jpName: 'Midori',
      enName: 'green',
      sound: "sounds/colors/green.wav",
    ),
    ItemModel(
      imagePath: "assets/images/colors/color_red.png",
      jpName: 'Aka',
      enName: 'red',
      sound: "sounds/colors/red.wav",
    ),
    ItemModel(
      imagePath: "assets/images/colors/color_white.png",
      jpName: 'Shiro',
      enName: 'white',
      sound: "sounds/colors/white.wav",
    ),
    ItemModel(
      imagePath: "assets/images/colors/yellow.png",
      jpName: 'Kiiro',
      enName: 'yellow',
      sound: "sounds/colors/yellow.wav",
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
        title: Text(
          'Colors',
          style: AppTextStyle.heading.copyWith(fontSize: 22),
        ),
      ),

      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return Item(
            numberModel: members[index],
            containerColor: Color(0xff7D40A2),
          );
        },
      ),
    );
  }
}
