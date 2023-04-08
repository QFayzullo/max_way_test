import 'package:flutter/material.dart';
import 'package:max_way/appbar/second_appbar_item.dart';
import 'package:max_way/model/pop.dart';
import 'package:max_way/model/model_food.dart';
import 'package:max_way/model/stackdown.dart';
import '../appbar/appbar.dart';
import '../model/foods.dart';
import '../model/infor.dart';
typedef void foodCallback(List<Foods> foods);
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int count =0;
  List<Foods> _foods=[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title:  AppBarSourse(
            count: count,
            foods: _foods,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset('assets/images/main.png'),
                ],
              ),
              const Text(
                "Siz izlagan mazzali ta'mlar",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: 'OpenSans'),
              ),
              const Popular(),
              const SecondAppBarItem(),
               FoodsCategory(onFoodChanged: (List<Foods> foods){
                 calculate(foods);
               },),
              const StackDown(),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
              ),
              const InformationOur(),
            ],
          ),
        ),
      ),
    );
  }
  void calculate(List<Foods> foods){
    setState(() {
      count++;
      _foods=foods;
    });
  }
}
