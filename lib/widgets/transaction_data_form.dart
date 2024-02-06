import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/styles.dart';
import 'package:resposive_dash_board/widgets/custom_background.dart';

import 'custom_form_filed.dart';
import 'data_form_item.dart';
import 'drop_down_amount_type.dart';

class TransactionDataForm extends StatefulWidget {
  const TransactionDataForm({super.key});

  @override
  State<TransactionDataForm> createState() => _TransactionDataFormState();
}

class _TransactionDataFormState extends State<TransactionDataForm> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: DataFormItem(
              title: "Customer name",
              widget: CustomFormFiled(hintTitle: "Type customer name"),
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: DataFormItem(
              title: "Customer Email",
              widget: CustomFormFiled(hintTitle: "Type customer email"),
            )),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: DataFormItem(
              title: "Item name",
              widget: CustomFormFiled(hintTitle: "Type item name"),
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: DataFormItem(
                  title: "Item mount",
                  widget: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: DropDownAmountType(),
                      ),
                      Expanded(child: CustomFormFiled(hintTitle: "",))
                    ],
                  )),
            )
          ],
        )
      ],
    );
  }
}


