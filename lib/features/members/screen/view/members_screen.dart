import 'package:flutter/material.dart';
import 'package:tokuapp/core/app_text_style.dart';
import 'package:tokuapp/features/members/models/item_model.dart';
import 'package:tokuapp/features/members/widgets/item.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
      imagePath: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'three',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'four',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'five',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'six',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'seven',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_nine.png',
      jpName: 'kyuu',
      enName: 'nine',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_ten.png',
      jpName: 'jū',
      enName: 'ten',
      sound: 'sounds/numbers/number_ten_sound.mp3',
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
        title: Text('Numbers', style: AppTextStyle.heading),
      ),

      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            itemModel: numbers[index],
            containerColor: Color(0xffF99531),
          );
        },
      ),
    );
  }
}
