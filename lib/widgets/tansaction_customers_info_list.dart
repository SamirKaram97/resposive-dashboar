
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../models/user_info_model.dart';
import '../utils/images.dart';
import 'user_info_list_tile.dart';

class TransactionCustomersInfoList extends StatefulWidget {
  const TransactionCustomersInfoList({super.key});

  @override
  State<TransactionCustomersInfoList> createState() => _TransactionCustomersInfoListState();
}

class _TransactionCustomersInfoListState extends State<TransactionCustomersInfoList> {

  final List<UserInfoModel> users=const[
    UserInfoModel(name: "Madrani Andi",email: "Madraniadi20@gmail",image: Assets.imagesAvatar1),
    UserInfoModel(name: "Josua Nunito",email: "Josh Nunito@gmail.com",image: Assets.imagesAvatar2),
    UserInfoModel(name: "Madrani Andi",email: "Madraniadi20@gmail",image: Assets.imagesAvatar1),
    UserInfoModel(name: "Josua Nunito",email: "Josh Nunito@gmail.com",image: Assets.imagesAvatar2),
  ];
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
        users.map((e) => IntrinsicWidth(
          child: Padding(
            padding: const EdgeInsets.only(right: 12),
            child: UserInfoListTile(userInfoModel:e,),
          ),
        )).toList()
        ,
      ),
    );
  }
}