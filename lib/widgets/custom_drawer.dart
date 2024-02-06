import 'package:flutter/material.dart';
import 'package:resposive_dash_board/models/user_info_model.dart';
import 'package:resposive_dash_board/utils/images.dart';
import 'package:resposive_dash_board/widgets/drawer_bottom_list_view.dart';
import 'package:resposive_dash_board/widgets/inactive_drawer_item.dart';
import 'package:resposive_dash_board/widgets/user_info_list_tile.dart';

import '../models/drawer_item_model.dart';
import 'custom_drawer_item.dart';
import 'drawer_top_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFFFFFFFF),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
        child: CustomScrollView(slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          const SliverToBoxAdapter(
            child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                    name: "Lekan Okeowo",
                    email: "demo@gmail.com",
                    image: Assets.imagesAvatar3)),
          ),
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 8,
          )),
          const DrawerTopListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                GestureDetector(
                  onTap: () {},
                  child: const InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        name: "Setting system", icon: Assets.imagesSettings),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          name: "Logout account", icon: Assets.imagesLogout)),
                ),
                const SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
