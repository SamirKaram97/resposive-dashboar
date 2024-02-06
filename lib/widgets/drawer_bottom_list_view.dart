import 'package:flutter/cupertino.dart';
import 'package:resposive_dash_board/utils/images.dart';
import 'package:resposive_dash_board/widgets/custom_drawer_item.dart';

import '../models/drawer_item_model.dart';

class DrawerBottomListView extends StatelessWidget {
  const DrawerBottomListView({super.key});

  final List<DrawerItemModel> items = const [
    DrawerItemModel(name: "Setting system", icon: Assets.imagesSettings),
    DrawerItemModel(name: "Logout account", icon: Assets.imagesLogout),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) =>
          CustomDrawerItem(isActive: false, drawerItemModel: items[index]),
      itemCount: items.length,
    );
  }
}
