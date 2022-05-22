import 'package:bags_shop/Moudle/product.dart';
import 'package:bags_shop/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../Details/details_Screen.dart';
import 'categores.dart';
import 'item_card.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kPadding),
          child: Text(
            "WOMEN",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        categores(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: kPadding,
                    crossAxisSpacing: kPadding,
                    crossAxisCount: 2,
                    childAspectRatio: .75),
                itemBuilder: (context, index) => cardItam(product: products[index],press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(product: products[index],))),)),
          ),
        )
      ],
    );
  }
}

