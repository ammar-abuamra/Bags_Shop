

import 'package:flutter/material.dart';

import '../../constans.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool IsSelceted;

  const ColorDot({Key key, this.color, this.IsSelceted = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kPadding / 4, right: kPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: IsSelceted ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
