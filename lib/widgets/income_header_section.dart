import 'package:flutter/material.dart';

import '../utils/styles.dart';
import 'all_expenses_header_drop_down.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'Income',
          style:AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const AllExpensesHeaderDropDown()
      ],
    );
  }
}