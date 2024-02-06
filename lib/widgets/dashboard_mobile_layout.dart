
import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'my_card_and_transaction_history_and_statistics_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSections(),
          MyCardAndTransactionHistoryAndStatisticsSection(),
        ],
      ),
    );
  }
}
