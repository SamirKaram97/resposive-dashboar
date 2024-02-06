import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/styles.dart';
import 'package:resposive_dash_board/widgets/all_expenses_header_drop_down.dart';

class AllExpensesHeader extends StatefulWidget {
  const AllExpensesHeader({super.key});

  @override
  State<AllExpensesHeader> createState() => _AllExpensesHeaderState();
}

class _AllExpensesHeaderState extends State<AllExpensesHeader> {


  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      Text(
        "All Expenses",
        style: AppStyles.styleSemiBold20(context),
      ),
      // Spacer(),
      // AllExpensesHeaderDropDown(),
    ]);
  }
}
