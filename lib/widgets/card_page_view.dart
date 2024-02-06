import 'package:flutter/material.dart';
import '../models/card_data_model.dart';
import 'card_page_view_item.dart';

class CardPageView extends StatefulWidget {
  const CardPageView({super.key, required this.cards, required this.controller});
  final List<CardDataModel> cards;
  final PageController controller;
  @override
  State<CardPageView> createState() => _CardPageViewState();
}

class _CardPageViewState extends State<CardPageView> {




  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: PageView.builder(itemCount: widget.cards.length
        ,itemBuilder: (context, index) {
        return CardPageViewItem(cardDataModel: widget.cards[index]);
      },controller: widget.controller),
    );
  }
}




