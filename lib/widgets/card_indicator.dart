
import 'package:flutter/material.dart';

class CardIndicator extends StatelessWidget {
  const CardIndicator({super.key, required this.currentIndex, required this.cardsNumber});
  final int currentIndex;
  final int cardsNumber;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        for(int i=0;i<cardsNumber;i++)
          Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IndicatorDot(isActive: i==currentIndex))
      ],
    );
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
      duration: const Duration(seconds: 1),
      child: Container(
        width: isActive?32:8,
        height: 8,
        decoration: ShapeDecoration(
          color: isActive?const Color(0xFF4DB7F2):const Color(0xFFE7E7E7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
