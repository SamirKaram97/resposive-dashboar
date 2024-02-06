import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/styles.dart';
import 'package:resposive_dash_board/widgets/custom_background.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(child: CustomButton(onTab: (){},title: "Add more details",)),
        const SizedBox(width: 24,),
        Expanded(child: CustomButton(onTab: (){},color: const Color(0XFF4EB7F2),title: "Add more details",)),
        

      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.color, required this.title,this.onTab
  });
  final Color? color;
  final GestureTapCallback? onTab;
  final String title;

  @override
  Widget build(BuildContext context) {
    if(color==null) {
      return  GestureDetector(onTap: onTab,child: CustomBackground(contentPadding: 20,child: Center(child: FittedBox(child: Text(title,style: AppStyles.styleSemiBold18(context),))),));
    }
    return GestureDetector(onTap:onTab,child: CustomBackground(contentPadding: 20,color: const Color(0XFF4EB7F2),child: Center(child: FittedBox(child: Text(title,style: AppStyles.styleSemiBold18(context).copyWith(color: Colors.white),))),));
  }
}
