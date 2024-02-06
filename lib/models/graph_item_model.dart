import 'package:flutter/material.dart';

class GraphItemModel
{
  final Color color;
  final String name;
  final double? percentage;

  const GraphItemModel({required this.color, required this.name, required this.percentage});
}