import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.mobile, required this.tablet, required this.desktop});
  final WidgetBuilder mobile,tablet,desktop;

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth<SizeConfig.tabletBreakPoint)
      {
        return  mobile(context);
      }
      else if(constraints.maxWidth<SizeConfig.desktopBreakPoint)
      {
        return  tablet(context);
      }
      else
      {
        return  desktop(context);
      }
    });
  }
}
