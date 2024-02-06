import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/styles.dart';
import 'package:resposive_dash_board/widgets/custom_background.dart';

import '../models/transaction_history_data_list_item_model.dart';
import 'transaction_history_header.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20,),
        Text("13 April 2022",style: AppStyles.styleMedium16(context).copyWith(color: const Color(0XFFAAAAAA)),),
        const SizedBox(height: 16,),
        const TransactionHistoryDataList()
      ],
    );
  }
}



class TransactionHistoryDataList extends StatelessWidget {
  const TransactionHistoryDataList({super.key});

  final List<TransactionHistoryDataListItemModel> items=const[
    TransactionHistoryDataListItemModel(name: "Cash Withdrawal",date: "13 Apr, 2022 ",price: "\$20,129"),
    TransactionHistoryDataListItemModel(name: "Landing Page project",date: "13 Apr, 2022 at 3:30 PM ",price: "\$20,129"),
    TransactionHistoryDataListItemModel(name: "Juni Mobile App project",date: "113 Apr, 2022 at 3:30 PM",price: "\$20,129"),
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: items.asMap().entries.map((e) => Padding(
        padding:  EdgeInsets.only(bottom: e.key==items.length-1? 0:12.0),
        child: TransactionHistoryDataListItem(transactionHistoryDataListItemModel: e.value,),
      )).toList(),
    );
  }
}

class TransactionHistoryDataListItem extends StatelessWidget {
  const TransactionHistoryDataListItem({super.key, required this.transactionHistoryDataListItemModel});

  final TransactionHistoryDataListItemModel transactionHistoryDataListItemModel;

  @override
  Widget build(BuildContext context) {
    return  CustomBackground(contentPadding: 16,color: const Color(0XFFFAFAFA),child:Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(transactionHistoryDataListItemModel.name,style: AppStyles.styleSemiBold16(context),),
            const SizedBox(height: 6,),
            Text(transactionHistoryDataListItemModel.date,style: AppStyles.styleRegular16(context).copyWith(color:const Color(0xFFAAAAAA),),),
          ],
        ),
        const Spacer(),
        Text(transactionHistoryDataListItemModel.price,style: AppStyles.styleSemiBold20(context).copyWith(color: const Color(0XFF7DD97B)),)


      ],
    ));

  }
}


