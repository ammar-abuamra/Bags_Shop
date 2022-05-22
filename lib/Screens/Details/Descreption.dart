import 'package:flutter/material.dart';

import '../../Moudle/product.dart';
import '../../constans.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPadding),
      child: Text(product.description,style: TextStyle(height: 1.5),),
    );
  }
}
