
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/all_expenses_card_model.dart';
import '../utils/styles.dart';

class AllExpensesCard extends StatelessWidget {
  const AllExpensesCard({super.key,required this.allExpensesCardModel, required this.isActive});
  final AllExpensesCardModel allExpensesCardModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return  isActive? ActiveAllExpensesCard(allExpensesCardModel: allExpensesCardModel,): InActiveAllExpensesCard(allExpensesCardModel: allExpensesCardModel,);
  }
}

class InActiveAllExpensesCard extends StatelessWidget {
  const InActiveAllExpensesCard({super.key, required this.allExpensesCardModel});
  final AllExpensesCardModel allExpensesCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 60),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                        decoration:const ShapeDecoration(
                          color: Color(0xFFFAFAFA),
                          shape: OvalBorder(),
                        ),
                        child:  Center(child: SvgPicture.asset(allExpensesCardModel.icon))),
                  ),
                ),
              ),

             const Icon(Icons.arrow_forward_ios,color: Color(0XFF064061),)
            ],
          ),
          const SizedBox(height: 34,),
          Text(allExpensesCardModel.type,style: AppStyles.styleSemiBold16(context),),
          const SizedBox(height: 8,),
          Text(allExpensesCardModel.date,style: AppStyles.styleRegular14(context),),
          const SizedBox(height: 16,),
          FittedBox(
            fit: BoxFit.scaleDown,
              child: Text("\$${allExpensesCardModel.amount}",style: AppStyles.styleSemiBold24(context),)),
        ],
      ),
    );
  }
}

class ActiveAllExpensesCard extends StatelessWidget {
  const ActiveAllExpensesCard({super.key, required this.allExpensesCardModel});

  final AllExpensesCardModel allExpensesCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0XFF4EB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 60),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFAFAFA).withOpacity(.1),
                          shape: const OvalBorder(),
                        ),
                        child:  Center(child: SvgPicture.asset(allExpensesCardModel.icon,color: Colors.white,))),
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward_ios,color: Colors.white,)
            ],
          ),
          const SizedBox(height: 34,),
          Text(allExpensesCardModel.type,style: AppStyles.styleSemiBold16(context).copyWith(color: Colors.white),),
          const SizedBox(height: 8,),
          Text(allExpensesCardModel.date,style: AppStyles.styleRegular14(context).copyWith(color: Colors.white),),
          const SizedBox(height: 16,),
          FittedBox(fit: BoxFit.scaleDown,child: Text("\$${allExpensesCardModel.amount}",style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),)),
        ],
      ),
    );
  }
}


