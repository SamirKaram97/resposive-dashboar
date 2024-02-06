import 'dart:developer';

import 'package:flutter/material.dart';

import '../widgets/adaptive_layout.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/dashboard_desktop_layout.dart';
import '../widgets/dashboard_mobile_layout.dart';
import '../widgets/dashboard_tablet_layout.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width<900?AppBar():null,
      backgroundColor: const Color(0XFFFAFAFA),
      drawer: MediaQuery.sizeOf(context).width<900?SizedBox(width:MediaQuery.sizeOf(context).width*.7,child: const CustomDrawer()):null,
      body: AdaptiveLayout(
        mobile: (context) => const DashBoardMobileLayout(),
        tablet: (context) => const DashBoardTabletLayout(),
        desktop: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
