

import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/styles.dart';

import '../models/graph_item_model.dart';
import 'graph_data_item.dart';

class GraphData extends StatelessWidget {
  const GraphData({super.key, required this.items});
  final List<GraphItemModel> items;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: items.map((e) => Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: GraphDataListItem(graphItemModel: e),
      )).toList(),
    );
  }
}


