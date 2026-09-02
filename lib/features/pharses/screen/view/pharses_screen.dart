import 'package:flutter/material.dart';
import 'package:tokuapp/core/app_text_style.dart';
import 'package:tokuapp/features/members/models/item_model.dart';
import 'package:tokuapp/features/pharses/widgets/pharses_item.dart';

class PharsesScreen extends StatelessWidget {
  const PharsesScreen({super.key});
  final List<ItemModel> pharses = const [
    ItemModel(
      jpName: 'Kimasu ka ?',
      enName: 'Are you coming',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      jpName: 'Channeru tōroku o wasurenaide kudasai',
      enName: 'don\'t forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jpName: 'Kibun wa dou desu ka?',
      enName: 'How are you feeling ?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpName: 'Anime ga daisuki desu.',
      enName: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jpName: 'Puroguramingu ga daisuki desu.',
      enName: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      jpName: 'Puroguramingu wa kantan desu',
      enName: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),

    ItemModel(
      jpName: 'Onamae wa nan desu ka?',
      enName: 'What is your name ?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),

    ItemModel(
      jpName: 'Doko e ikimasu ka?',
      enName: 'Where are you going ?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),

    ItemModel(
      jpName: 'Hai, ikimasu',
      enName: 'Yes i\'m coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
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
        title: Text('Phrases', style: AppTextStyle.heading),
      ),

      body: ListView.builder(
        itemCount: pharses.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            containerColor: Color(0xff47A5CB),
            pharsesModel: pharses[index],
          );
        },
      ),
    );
  }
}
