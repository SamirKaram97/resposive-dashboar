import 'package:flutter/material.dart';

import 'card_and_transaction_sections.dart';
import 'income_section.dart';

class MyCardAndTransactionHistoryAndStatisticsSection extends StatelessWidget {
  const MyCardAndTransactionHistoryAndStatisticsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40,),
        CardAndTransactionSections(),
        SizedBox(height: 24,),
        IncomeSection()
      ],
    );
  }
}


