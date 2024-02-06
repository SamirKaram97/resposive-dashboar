import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/all_expenses.dart';
import 'package:resposive_dash_board/widgets/quick_invoice_header.dart';
import 'package:resposive_dash_board/widgets/transaction_data_form.dart';

import 'bottom_buttons.dart';
import 'custom_background.dart';
import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomBackground(contentPadding: 24,child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(height: 24,),
        LatestTransaction(),
        Divider(color: Color(0XFFF1F1F1),thickness: 1,height: 48,),
        TransactionDataForm(),
        SizedBox(height: 24,),
        BottomButtons(),
      ],
    ));
  }
}
