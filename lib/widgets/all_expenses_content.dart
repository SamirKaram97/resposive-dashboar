import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposive_dash_board/utils/images.dart';
import 'package:resposive_dash_board/utils/styles.dart';
import 'package:resposive_dash_board/widgets/AllExpensesCard.dart';

import '../models/all_expenses_card_model.dart';

class AllExpensesContent extends StatefulWidget {
  const AllExpensesContent({super.key});

  @override
  State<AllExpensesContent> createState() => _AllExpensesContentState();
}

class _AllExpensesContentState extends State<AllExpensesContent> {
  List<AllExpensesCardModel> items=[
    const AllExpensesCardModel(icon: Assets.imagesBalance,amount: "20,192",date: "April 2022",type: "Balance"),
    const AllExpensesCardModel(icon: Assets.imagesBalance,amount: "20,192",date: "April 2022",type: "Balance"),
    const AllExpensesCardModel(icon: Assets.imagesIncome,amount: "20,192",date: "April 2022",type: "Income"),
    const AllExpensesCardModel(icon: Assets.imagesIncome,amount: "20,192",date: "April 2022",type: "Income"),
    const AllExpensesCardModel(icon: Assets.imagesExpenses,amount: "20,192",date: "April 2022",type: "Expenses"),
  ];
  int selectedCard=0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for(int i=0;i<items.length;i++)
          (i==1||i==3)?const SizedBox(width: 12,):Expanded(child: GestureDetector(
            onTap: (){
              setState(() {
                selectedCard=i;
              });
            },
            child: AllExpensesCard(allExpensesCardModel: items[i], isActive: i==selectedCard),
          ))
      ],
    );
  }
}
