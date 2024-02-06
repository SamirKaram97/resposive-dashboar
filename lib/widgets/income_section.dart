

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:resposive_dash_board/models/graph_item_model.dart';
import 'package:resposive_dash_board/utils/size_config.dart';
import 'package:resposive_dash_board/widgets/custom_background.dart';
import 'package:resposive_dash_board/widgets/detailed_graph.dart';

import 'graph.dart';
import 'graph_data.dart';
import 'income_header_section.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
        contentPadding: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IncomeSectionHeader(),
            SizedBox(
              height: 16,
            ),
            StaticsSection(),
          ],
        ));
  }
}

class StaticsSection extends StatefulWidget {
  const StaticsSection({super.key});

  @override
  State<StaticsSection> createState() => _StaticsSectionState();
}

class _StaticsSectionState extends State<StaticsSection> {
  List<GraphItemModel> items = [
    const GraphItemModel(
      color: Color(0XFF208CC8),
      name: 'Design service',
      percentage: 40,
    ),
    const GraphItemModel(
      color: Color(0XFF4EB7F2),
      name: "Design product",
      percentage: 25,
    ),
    const GraphItemModel(
      color: Color(0XFF064061),
      name: 'Product royalti',
      percentage: 20,
    ),
    const GraphItemModel(
      color: Color(0XFFE2DECD),
      name: 'Other',
      percentage: 22,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.sizeOf(context).width;
    return  (width<1375&&width>=SizeConfig.desktopBreakPoint)||(width<=388)?
    DetailedGraph(items: items):Row(children: [
      Expanded(
        child: Graph(items: items),
      ),
      const SizedBox(
        width: 40,
      ),
      Expanded(
          child: GraphData(
        items: items,
      ))
    ]);
  }
}
