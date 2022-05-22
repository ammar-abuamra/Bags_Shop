import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Moudle/product.dart';
import '../../constans.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: product.color)
            ),
            child: IconButton(
                onPressed: (){}, icon: SvgPicture.asset('assets/icons/cart.svg',color: product.color,)),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),),
                color: product.color,
                onPressed: (){},
                child: Text(
                  'BUY NOW',style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
