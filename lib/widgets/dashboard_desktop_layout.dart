import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/custom_drawer.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'my_card_and_transaction_history_and_statistics_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 320, child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(flex:604+468,child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Expanded(flex: 604, child: Padding(
                      padding: EdgeInsets.only(top: 40),
                       child: AllExpensesAndQuickInvoiceSections(),
                    )),
                    SizedBox(width: 24,),
                    Expanded( flex :468,child: Column(
                      children: [
                        MyCardAndTransactionHistoryAndStatisticsSection(),
                      ],
                    )),
                  ]
              ),
            )

          ],

        ))
      ],
    );
  }
}
