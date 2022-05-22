import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constans.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body:body() ,
    );
  }

  AppBar buildAppBar() {
    return AppBar(backgroundColor: Colors.white,
    elevation: 0,
      leading: IconButton(
        onPressed: (){},
          icon: SvgPicture.asset('assets/icons/back.svg')),
      actions: <Widget>[
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset('assets/icons/search.svg',color: kTextColor,)),
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset('assets/icons/cart.svg',color: kTextColor,)),
        SizedBox(width: kPadding/2,)
      ],
    );
  }
}
