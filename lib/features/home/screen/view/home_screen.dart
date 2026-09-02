import 'package:flutter/material.dart';
import 'package:tokuapp/core/app_text_style.dart';
import 'package:tokuapp/features/colors/screen/view/colors_screen.dart';
import 'package:tokuapp/features/family_memebers/screen/view/family_screen.dart';
import 'package:tokuapp/features/home/widgets/custom_container.dart';
import 'package:tokuapp/features/members/screen/view/members_screen.dart';
import 'package:tokuapp/features/pharses/screen/view/pharses_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),
        title: Text('Toku', style: AppTextStyle.heading),
      ),
      body: Column(
        children: [
          CustomContainer(
            text: 'Members',
            containerBg: Color(0xffF99531),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MembersScreen()),
              );
            },
          ),
          CustomContainer(
            text: 'Family Members',
            containerBg: Color(0xff528031),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FamilyScreen()),
              );
            },
          ),
          CustomContainer(
            text: 'Colors',
            containerBg: Color(0xff7D40A2),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ColorsScreen()),
              );
            },
          ),
          CustomContainer(
            text: 'Phrases',
            containerBg: Color(0xff47A5CB),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PharsesScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
