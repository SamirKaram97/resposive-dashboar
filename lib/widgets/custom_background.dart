import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground(
      {super.key, required this.child, this.contentPadding = 0, this.color=Colors.white});

  final Widget child;
  final double contentPadding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(contentPadding),
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: child);
  }
}
