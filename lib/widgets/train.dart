import 'package:flutter/material.dart';

class Train extends StatelessWidget {
  const Train({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(width: 400,child: FittedBox(fit: BoxFit.scaleDown,child: Container(color: Colors.amber,height: 10,width: 20,),)),
          Flexible(child: Container(color: Colors.black,height: 10,width: 20,),),

        ],
      ),
    );
  }
}
