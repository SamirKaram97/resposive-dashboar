import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/drawer_item_model.dart';
import '../utils/styles.dart';
class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,

  });

  final DrawerItemModel drawerItemModel;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.icon),
      title:  FittedBox(fit: BoxFit.scaleDown,alignment: AlignmentDirectional.centerStart,child: Text(drawerItemModel.name,style: AppStyles.styleBold16(context),)),
      trailing: Container(width: 3,color: const Color(0XFF4EB7F2),),
    );
  }
}