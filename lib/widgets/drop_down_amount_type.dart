import 'package:flutter/material.dart';

import '../utils/styles.dart';

class DropDownAmountType extends StatelessWidget {
  const DropDownAmountType({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        style: AppStyles.styleRegular16(context).copyWith(color: const Color(0XFFAAAAAA)),
        icon: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(Icons.keyboard_arrow_down),
        ),
        items: const [
          DropdownMenuItem(
            value: "USD",
            child: Text(
              "USD",
            ),
          ),
          DropdownMenuItem(
              value: "EGP",
              child: Text(
                "EGP",
              )),
          DropdownMenuItem(
              value: "SEA",
              child: Text(
                "SEA",
              )),
        ],
        value: "USD", onChanged: (String? value) {  },
      ),
    );
  }
}


