import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/card_data_model.dart';
import '../utils/images.dart';
import '../utils/styles.dart';

class CardData extends StatelessWidget {
  const CardData({super.key, required this.cardDataModel});
  final CardDataModel cardDataModel;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 20,),
        Row(
          children: [
            const SizedBox(width: 31,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cardDataModel.cardName,style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),),
                const SizedBox(height: 8,),
                Text(cardDataModel.ownerName,style: AppStyles.styleMedium20(context)),
              ],
            ),
            const Spacer(),
            SvgPicture.asset(Assets.imagesGallery),
            const SizedBox(width: 45,),

          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(cardDataModel.cardNumber,style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),),
              const SizedBox(height: 12,),
              Text(cardDataModel.cardDate,style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),),
            ],
          ),
        ),
        const SizedBox(height: 27,)
      ],
    );
  }
}