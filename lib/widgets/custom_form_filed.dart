import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomFormFiled extends StatelessWidget {
  const CustomFormFiled({
    super.key,
    required this.hintTitle,
  });

  final String hintTitle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsetsDirectional.all(20),
          hintText: hintTitle,
          hintStyle: AppStyles.styleRegular16
            (context).copyWith(color: const Color(0XFFAAAAAA))),
    );
  }
}
