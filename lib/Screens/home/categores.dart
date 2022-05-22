import 'package:flutter/material.dart';

import '../../constans.dart';




class categores extends StatefulWidget {

  @override
  _categoresState createState() => _categoresState();
}

class _categoresState extends State<categores> {
  List<String>  categoriess =["Hand bag" , "jewellery","Footwaer","Dresses" ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric( vertical:kPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriess.length,
            itemBuilder: (context,index)=>buildText(index)),
      ),
    );
  }

  Widget buildText(int index) => InkWell(
    onTap: (){
      setState(() {
        selectedIndex = index;
      });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(categoriess[index],style: TextStyle(fontWeight: FontWeight.bold, color: selectedIndex == index ? kTextColor : kLightTextColor),),
          Container(
            margin: EdgeInsets.only(top: kPadding/4),
            height: 2,width: 30,color: selectedIndex == index ? Colors.black : Colors.transparent,)
        ],
      ),
    ),
  );
}
