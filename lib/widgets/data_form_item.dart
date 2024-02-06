import 'package:flutter/material.dart';

import '../utils/styles.dart';
import 'custom_background.dart';
class DataFormItem extends StatelessWidget {
  const DataFormItem({super.key, required this.title, required this.widget});

  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomBackground(
            color: const Color(0XFFFAFAFA),
            child: widget)
      ],
    );
  }
}