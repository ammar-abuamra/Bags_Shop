import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'IteamCount.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCount(),
        Container(
          height: 32,width:32 ,
          padding: EdgeInsets.all(8),
          child: SvgPicture.asset('assets/icons/heart.svg'),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffff6464)
          ),
        )
      ],
    );
  }
}
