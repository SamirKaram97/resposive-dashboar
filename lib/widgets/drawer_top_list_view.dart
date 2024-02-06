import 'package:flutter/cupertino.dart';
import 'package:resposive_dash_board/utils/images.dart';
import 'package:resposive_dash_board/widgets/custom_drawer_item.dart';

import '../models/drawer_item_model.dart';

class DrawerTopListView extends StatefulWidget {
  const DrawerTopListView({super.key});

  @override
  State<DrawerTopListView> createState() => _DrawerTopListViewState();
}

class _DrawerTopListViewState extends State<DrawerTopListView> {
  int activeIndex = 0;

  final List<DrawerItemModel> items = const [
    DrawerItemModel(name: "Dashboard", icon: Assets.imagesDashboard),
    DrawerItemModel(name: "My Transaction", icon: Assets.imagesMyTransctions),
    DrawerItemModel(name: "Statistics", icon: Assets.imagesStatistics),
    DrawerItemModel(name: "Wallet Account", icon: Assets.imagesWalletAccount),
    DrawerItemModel(name: "My Investments", icon: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = index;
              });
            },
            child: CustomDrawerItem(
                isActive: activeIndex == index, drawerItemModel: items[index]));
      },
      itemCount: items.length,
    );
  }
}
