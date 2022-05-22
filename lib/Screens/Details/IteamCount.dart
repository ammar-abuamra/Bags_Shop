


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constans.dart';

class CartCount extends StatefulWidget {
  const CartCount({Key key}) : super(key: key);

  @override
  State<CartCount> createState() => _CartCountState();
}

class _CartCountState extends State<CartCount> {
  int NumOfItem=1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildSizedBox(icon: Icons.remove,press: (){setState(() {
          if (NumOfItem >1){  NumOfItem--;}
        });}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding/2),
          child: Text(NumOfItem.toString().padLeft(2,'0'),style: Theme.of(context).textTheme.headline6,),
        ),
        buildSizedBox(icon: Icons.add,press: (){setState(() {
          NumOfItem++;
        });})
      ],
    );
  }

  SizedBox buildSizedBox({IconData icon ,Function press}) {
    return SizedBox(
      width: 40,height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        onPressed:press,
        child: Icon(icon),
      ),
    );
  }


}
