import 'package:flutter/material.dart';
import 'package:tokuapp/core/app_text_style.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.text,
    required this.containerBg,
    required this.ontap,
  });
  final String text;
  final Color containerBg;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16),
        width: double.infinity,
        height: 75,
        color: containerBg,
        child: Text(text, style: AppTextStyle.heading.copyWith(fontSize: 20)),
      ),
    );
  }
}
