import 'package:flutter/material.dart';

import '../model/foods.dart';

class OrderedFoods extends StatefulWidget {
  final List<Foods> foods;

  OrderedFoods({Key? key, required this.foods}) : super(key: key);

  @override
  State<OrderedFoods> createState() => _OrderedFoodsState();
}

class _OrderedFoodsState extends State<OrderedFoods> {
  Map<String, int> map = {};

  int total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ordered Foods'),
        elevation: 2,
        centerTitle: true,
        foregroundColor: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 10, top: 20, bottom: 20),
                        child: Image.asset(widget.foods[index].imgName),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.foods[index].title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    fontFamily: "Inter-Regular.ttf"),
                              ),
                              const Divider(
                                  height: 1.0,
                                  color: Colors.amber,
                                  endIndent: 60.0),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      increase(widget.foods[index]);
                                    },
                                    child: Container(
                                      color: Colors.amber,
                                      height: 30.0,
                                      width: 40.0,
                                      child: const Center(
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  InkWell(
                                    onTap: (){
                                      decrease(widget.foods[index]);
                                    },
                                    child: Container(
                                      color: Colors.amber,
                                      height: 30.0,
                                      width: 40.0,
                                      child: const Center(
                                        child: Text(
                                          "-",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    color: Colors.amber,
                                    height: 30.0,
                                    width: 40.0,
                                    child:  Center(
                                      child: Text(
                                        counter(widget.foods[index]).toString(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.foods[index].cost,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        fontFamily: "Inter-Regular.ttf"),
                                  ),
                                ],
                              ),
                              const Divider(
                                  height: 1.0,
                                  color: Colors.blueGrey,
                                  endIndent: 60.0),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]);
          },
          itemCount: widget.foods.length,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60.0,
        child: Container(
          //  margin: const EdgeInsets.symmetric(horizontal: 15.0),
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0)),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0.0, 1.00),
                  blurRadius: 4.00,
                  color: Colors.grey,
                  spreadRadius: 1.00),
            ],
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total price:",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "$total UZS",
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void decrease(Foods food) {
    setState(() {
      if (map.containsKey(food.title)) {
        if (map[food.title] == 1) {
          map.remove(food.title);
        } else {
          map[food.title] = map[food.title]! - 1;
        }
        total =total-int.parse(food.cost);
      }
    });
  }

  void increase(Foods food) {
    setState(() {
      if (map.containsKey(food.title)) {
        map[food.title] = map[food.title]! + 1;
      } else {
        map[food.title] = 1;
      }
      total = total + int.parse(food.cost);
    });
  }
  int counter(Foods food){
    return map[food.title]??0;
  }
}
