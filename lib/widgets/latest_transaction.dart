import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposive_dash_board/models/user_info_model.dart';
import 'package:resposive_dash_board/utils/images.dart';
import 'package:resposive_dash_board/utils/styles.dart';
import 'package:resposive_dash_board/widgets/custom_background.dart';
import 'package:resposive_dash_board/widgets/user_info_list_tile.dart';

import 'tansaction_customers_info_list.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});


  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction",style: AppStyles.styleMedium16(context),),
        const SizedBox(height: 12,),
        const TransactionCustomersInfoList()
      ],
    );
  }
}



