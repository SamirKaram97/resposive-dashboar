
import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/quick_invoice.dart';

import 'all_expenses.dart';

class AllExpensesAndQuickInvoiceSections extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         AllExpenses(),
        SizedBox(height:24 ,),
        QuickInvoice()
      ],
    );
  }
}