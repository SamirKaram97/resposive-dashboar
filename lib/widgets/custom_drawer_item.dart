import 'package:flutter/material.dart';
import '../models/drawer_item_model.dart';
import 'active_drawer_item.dart';
import 'inactive_drawer_item.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.isActive,required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 20),
      child: isActive?ActiveDrawerItem(drawerItemModel: drawerItemModel):InActiveDrawerItem(drawerItemModel: drawerItemModel),
    );
  }
}


