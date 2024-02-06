import 'package:flutter/material.dart';

import '../models/graph_item_model.dart';
import '../utils/styles.dart';

class GraphDataListItem extends StatelessWidget {
  const GraphDataListItem({
    super.key, required this.graphItemModel,
  });

  final GraphItemModel graphItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(height: 12,width: 12,decoration:  ShapeDecoration(shape:const CircleBorder(),color: graphItemModel.color,),),
        const SizedBox(width: 12,),
        Text(graphItemModel.name,style: AppStyles.styleRegular16(context),),
        const Spacer(),
        Text("${graphItemModel.percentage}%",style: AppStyles.styleMedium16(context).copyWith(color: const Color(0XFF208CC8)),)
      ],
    );
  }
}