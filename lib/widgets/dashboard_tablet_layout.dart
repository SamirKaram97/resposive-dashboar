import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/my_card_and_transaction_history_and_statistics_section.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'custom_drawer.dart';
import 'dashboard_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1,child: CustomDrawer(),),
        SizedBox(width: 32,),
        Expanded(flex: 2, child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: DashBoardMobileLayout(),
        ))
      ],
    );
  }
}
