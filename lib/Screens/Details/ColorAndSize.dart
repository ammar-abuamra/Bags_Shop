


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Moudle/product.dart';
import '../../constans.dart';
import 'ColorsDot.dart';
import 'Dbody.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color'),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xff365c95),
                    IsSelceted: true,
                  ),
                  ColorDot(
                    color: Color(0xfff8C078),
                  ),
                  ColorDot(
                    color: Color(0xffA29B9B),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
                  style: TextStyle(color: kTextColor),
                  children: [
                    TextSpan(text: 'Size\n'),
                    TextSpan(
                        text: '${product.size} cm',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(fontWeight: FontWeight.bold))
                  ])),
        )
      ],
    );
  }
}
