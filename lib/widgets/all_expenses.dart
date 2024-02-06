import 'package:flutter/material.dart';

import 'all_expenses_content.dart';
import 'all_expenses_header.dart';
import 'custom_background.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(contentPadding: 20,child: Column(
      children: [
         AllExpensesHeader(),
        SizedBox(height: 16,),
        AllExpensesContent(),
      ],

    ));
  }
}
