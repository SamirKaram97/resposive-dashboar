import 'package:flutter/material.dart';

import '../utils/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
            width: 48,
            height: 48,
            decoration:const ShapeDecoration(
              color: Color(0xFFFAFAFA),
              shape: OvalBorder(),
            ),
            child:  const Center(child: Icon(Icons.add,color: Color(0XFF4EB7F2),size: 18,)))
      ],
    );
  }
}
