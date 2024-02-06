import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../models/graph_item_model.dart';

class Graph extends StatefulWidget {
  const Graph({super.key, required this.items});

  final List<GraphItemModel> items;

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
          child: PieChart(
            PieChartData(
              pieTouchData: PieTouchData(
                touchCallback: (FlTouchEvent event, pieTouchResponse) {
                  setState(() {
                    if (!event.isInterestedForInteractions ||
                        pieTouchResponse == null ||
                        pieTouchResponse.touchedSection == null) {
                      touchedIndex = -1;
                      return;
                    }
                    touchedIndex = pieTouchResponse
                        .touchedSection!.touchedSectionIndex;
                  });

                },
              ),
              borderData: FlBorderData(
                show: false,

              ),
              sectionsSpace: 0,
              sections:showingSections(context,widget.items,touchedIndex),
            ),
          ),
        );
  }

  List<PieChartSectionData> showingSections(context, List<GraphItemModel> items,
      int touchedIndex) {
    return items
        .asMap()
        .entries
        .map((e) {
      final radius = touchedIndex==e.key ? 80.0 : 70.0;
      return PieChartSectionData(
        showTitle: false,

        color: e.value.color,
        value: e.value.percentage,
        radius: radius,
      );
    }).toList();
  }

}
