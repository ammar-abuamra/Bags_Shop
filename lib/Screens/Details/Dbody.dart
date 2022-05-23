
import 'package:bags_shop/Screens/Details/product_title_With_Image.dart';
import 'package:bags_shop/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Moudle/product.dart';
import 'AddToCart.dart';
import 'ColorAndSize.dart';
import 'CounterWithFavBtn.dart';
import 'Descreption.dart';

class DBody extends StatelessWidget {
  final Product product;

  const DBody({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  // height: 500,
                  margin: EdgeInsets.only(top: size.height * .3),
                  padding: EdgeInsets.only(
                      top: size.height * .12, left: kPadding, right: kPadding),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(
                        height: kPadding / 2,
                      ),
                      ProductDescription(product: product),
                      SizedBox(
                        height: kPadding / 2,
                      ),
                      CounterWithFavBtn(),
                      SizedBox(
                        height: kPadding / 2,
                      ),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTilteWilthImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
