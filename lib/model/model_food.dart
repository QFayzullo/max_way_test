import 'package:flutter/material.dart';

import '../screens/main_screen.dart';
import 'foods.dart';
import 'more.dart';

// ignore: must_be_immutable
class FoodsCategory extends StatefulWidget {
final foodCallback onFoodChanged;
   FoodsCategory({Key? key, required this.onFoodChanged}) : super(key: key);


  @override
  State<FoodsCategory> createState() => _FoodsCategoryState();
}

class _FoodsCategoryState extends State<FoodsCategory> {
  static List<Foods> pitsa = [
    Foods(
        title: "Gavaya",
        content:
            "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/pitsa.png',
        cost: "45000"),
    Foods(
        title: "Mexica",
        content:
            "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/mexica.png',
        cost: "64000"),
    Foods(
        title: "Hot achchiko",
        content:
            "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/pitsa.png',
        cost: "53000"),
  ];
  static List<Foods> burger = [
    Foods(
        title: "Cheeseburger",
        content:
            "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/burger.png',
        cost: "45000"),
    Foods(
        title: "Chiliburger",
        content:
            "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/burger.png',
        cost: "64000"),
    Foods(
        title: "Hamburger",
        content:
            "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/burger.png',
        cost: "53000"),
  ];
  static List<Foods> kombo = [
    Foods(
        title: "Kombo-1",
        content:
            "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/kombo.png',
        cost: "23000"),
    Foods(
        title: "Kombo-2",
        content:
            "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/combo2.png',
        cost: "25000"),
    Foods(
        title: "Kombo-3",
        content:
            "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/kombo.png',
        cost: "30000"),
  ];
  static List<Foods> waters = [
    Foods(
        title: "Sprite 1L",
        content:
            "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/water.png',
        cost: "6000"),
    Foods(
        title: "Coca cola 1,5L",
        content:
            "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/cola.png',
        cost: "9000"),
    Foods(
        title: "Fanta",
        content:
            "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/fanta.png',
        cost: "6000"),
  ];
  List<Foods> foodsList=[];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: SizedBox(
          width: double.infinity,
          child: Text(
            "Pitsa",
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontFamily: 'OpenSans'),
          ),
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return pitsaItem(pitsa[index]);
        },
        itemCount: pitsa.length,
      ),
      const MoreInformation(),
      const Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: SizedBox(
          width: double.infinity,
          child: Text(
            "Burger",
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontFamily: 'OpenSans'),
          ),
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return pitsaItem(burger[index]);
        },
        itemCount: burger .length,
      ),
      const MoreInformation(),
      const Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: SizedBox(
          width: double.infinity,
          child: Text(
            "Kombo",
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontFamily: 'OpenSans'),
          ),
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return pitsaItem(kombo[index]);
        },
        itemCount: kombo.length,
      ),
      const MoreInformation(),
      const Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: SizedBox(
          width: double.infinity,
          child: Text(
            "Ichimliklar",
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontFamily: 'OpenSans'),
          ),
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return pitsaItem(waters[index]);
        },
        itemCount: waters.length,
      ),
      const MoreInformation(),
    ]);
  }

  Widget pitsaItem(Foods pitsa, ) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 10, top: 20, bottom: 20),
                child: Image.asset(pitsa.imgName),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pitsa.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            fontFamily: "Inter-Regular.ttf"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            pitsa.content,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.w500),
                            maxLines: 3,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            pitsa.cost,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                fontFamily: "Inter-Regular.ttf"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: FloatingActionButton(
                              backgroundColor: Colors.amber,
                              onPressed: () {
                                setState(() {
                                  foodsList.add(pitsa);
                                });
                                widget.onFoodChanged(foodsList);
                              },
                              child: const Icon(Icons.add),
                              ),
                            ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }

}
