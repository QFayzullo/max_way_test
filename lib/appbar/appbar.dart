import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;

import '../model/foods.dart';
import '../orderfoods/foodsordered.dart';
class AppBarSourse extends StatelessWidget {
 final int count;
 final List<Foods> foods;
   AppBarSourse({Key? key,required this.count,required this.foods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset('assets/icon/Max.svg',
            width: 45.0, height: 45.0),
        const Text(
          'Menyu',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              fontFamily: 'OpenSans'
          ),
        ),
        const Opacity(
          opacity: 0.5,
          child: Text(
            'Bolalar uchun',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: 'OpenSans',
                fontSize: 14.0),
          ),
        ),
        const Opacity(
          opacity: 0.5,
          child: Text(
            'Filiallar',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: 'OpenSans',
                fontSize: 14.0),
          ),
        ),
           GestureDetector(
             onTap:  () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderedFoods(foods: foods,)));
             },
             child: Container(
               child: badges.Badge(
          badgeContent: Text(count.toString(),
                style: TextStyle(fontSize: 10.0),
          ),
                child: Icon(Icons.shopping_bag,size: 25,color: Colors.amber,),
          ),
             ),
           ),

        SvgPicture.asset('assets/icon/Vector.svg'),
      ],
    );
  }
}
