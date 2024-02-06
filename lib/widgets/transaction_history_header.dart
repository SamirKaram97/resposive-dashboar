import 'package:flutter/material.dart';

import '../utils/styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(children: [
      Text("Transaction History",style: AppStyles.styleSemiBold20(context).copyWith(color: const Color(0XFF064061)),),
      const Spacer(),
      Text("See all",style: AppStyles.styleMedium16(context).copyWith(color: const Color(0XFF4EB7F2)),)
    ],);
  }
}