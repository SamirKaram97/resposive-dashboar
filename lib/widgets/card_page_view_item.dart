import 'package:flutter/material.dart';

import '../models/card_data_model.dart';
import '../utils/images.dart';
import 'card_data.dart';

class CardPageViewItem extends StatelessWidget {
  const CardPageViewItem({super.key, required this.cardDataModel});
  final CardDataModel cardDataModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),),child: Stack(
      children: [
        Image.asset(Assets.imagesCardBackground),
        CardData(cardDataModel: cardDataModel),

      ],
    ),
    );
  }
}