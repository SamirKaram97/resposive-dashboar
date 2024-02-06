import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/styles.dart';
import 'package:resposive_dash_board/widgets/card_indicator.dart';

import '../models/card_data_model.dart';
import 'card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  final List<CardDataModel> cards=const[
    CardDataModel(cardName: "Visa",ownerName: "Syah Bandi",cardNumber: "0918 8124 0042 8129",cardDate: "12/20 - 124"),
    CardDataModel(cardName: "Visa",ownerName: "Syah Bandi",cardNumber: "0918 8124 0042 8129",cardDate: "12/20 - 124"),
    CardDataModel(cardName: "Visa",ownerName: "Syah Bandi",cardNumber: "0918 8124 0042 8129",cardDate: "12/20 - 124"),
  ];
  int currentIndex=0;
  late PageController controller;

  @override
  void initState() {
    controller=PageController(initialPage: 0)..addListener(() {
      changeIndicatorState(controller.page!.round());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
     Text("My card",style: AppStyles.styleSemiBold20(context),),
    const SizedBox(height: 20,),
    CardPageView(cards: cards,controller: controller),
    const SizedBox(height: 19,),
    CardIndicator(currentIndex: currentIndex,cardsNumber: cards.length),

          ],
        );
  }

  void changeIndicatorState(int index)
  {
    setState(() {
      currentIndex=index;
    });

  }

}
