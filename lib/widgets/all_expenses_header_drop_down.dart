import 'package:flutter/material.dart';

import '../utils/styles.dart';

class AllExpensesHeaderDropDown extends StatefulWidget {
  const AllExpensesHeaderDropDown({super.key});

  @override
  State<AllExpensesHeaderDropDown> createState() => _AllExpensesHeaderDropDownState();
}

class _AllExpensesHeaderDropDownState extends State<AllExpensesHeaderDropDown> {

  String selectedValue="Daily";
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          style: AppStyles.styleMedium16(context),
          icon: const Padding(
            padding: EdgeInsets.only(left: 18),
            child: Icon(Icons.keyboard_arrow_down),
          ),
          items: const [
            DropdownMenuItem(
              value: "Monthly",
              child: Text(
                "Monthly",
              ),
            ),
            DropdownMenuItem(value: "Daily", child: Text(
              "Daily",
            )),
            DropdownMenuItem(value: "Yearly", child: Text(
              "Yearly",
            )),
          ],
          onChanged: (String? value) {
            setState(() {
              selectedValue=value!;
            });
          },
          value: selectedValue,
        ),
      ),
    );
  }
}
