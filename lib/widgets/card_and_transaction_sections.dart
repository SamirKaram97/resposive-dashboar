import 'package:flutter/material.dart';

import 'custom_background.dart';
import 'dashboard_desktop_layout.dart';
import 'my_card_section.dart';
import 'transaction_history_section.dart';

class CardAndTransactionSections extends StatelessWidget {
  const CardAndTransactionSections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      contentPadding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardSection(),
          Divider(color: Color(0XFFF1F1F1),thickness: 1,height: 40,),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}