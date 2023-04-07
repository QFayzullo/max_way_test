import 'package:flutter/material.dart';
import 'items.dart';
class InformationOur extends StatefulWidget {
  const InformationOur({Key? key}) : super(key: key);
  @override
  State<InformationOur> createState() => _InformationOurState();
}
class _InformationOurState extends State<InformationOur> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Asosiy",
                style: TextStyle(fontSize: 18.0, fontFamily: "Inter-Medium.ttf"),
              ),
              Image(
                image: AssetImage(
                  "assets/images/down.png",
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Divider(
            thickness: 1,
            color: Colors.black26,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Qo'shimcha",
                style: TextStyle(fontSize: 18.0, fontFamily: "Inter-Medium.ttf"),
              ),
              Image(
                image: AssetImage(
                  "assets/images/down.png",
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Divider(
            thickness: 1,
            color: Colors.black26,
          ),
        ),
        const SizedBox(width: 20.0),
        const Text(
          "(+998 71) 200-54-00",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25.0, color: Colors.black87, fontWeight: FontWeight.normal),
        ),
        const SizedBox(height: 30.0),
        const Text(
          "100011, Toshkent sh. Shayxontohur tumani,Zarqaynar ko’chasi, 3B-uy",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.0, color: Colors.black54, fontWeight: FontWeight.normal),
        ),
        const SizedBox(width: 20.0,),
        const Items(),
        const SizedBox(width: 20.0,),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Divider(
            thickness: 1,
            color: Colors.black26,
          ),
        ),
        const SizedBox(height: 30.0),
        const Text(
          "© Maxway, 2020",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14.0, color: Colors.black54, fontWeight: FontWeight.normal),
        ),
        const SizedBox(width: 20.0),
      ],
    );
  }
}
