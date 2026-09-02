import 'package:flutter/material.dart';
import 'package:tokuapp/features/members/models/item_model.dart';
import 'package:tokuapp/features/widgets/item_info.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({
    super.key,
    required this.pharsesModel,
    required this.containerColor,
  });
  final ItemModel pharsesModel;
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: containerColor,
      child: Row(
        children: [Expanded(child: ItemInfo(itemModel: pharsesModel))],
      ),
    );
  }
}
