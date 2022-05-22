
import 'package:bags_shop/Moudle/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constans.dart';
import 'Dbody.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen ({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: product.color,
      appBar: fbuildAppBar(context),
      body:DBody(product: product),
    );
  }

  AppBar fbuildAppBar(BuildContext context) {
    return AppBar(backgroundColor:product.color,
      elevation: 0,
      leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: SvgPicture.asset('assets/icons/back.svg',color: Colors.white),),
      actions: <Widget>[
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset('assets/icons/search.svg',color: Colors.white,)),
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset('assets/icons/cart.svg',color: Colors.white,)),
        SizedBox(width: kPadding/2,)
      ],
    );
  }
}
