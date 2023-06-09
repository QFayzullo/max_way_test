import 'package:flutter/material.dart';
class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Image(
            image: AssetImage(
              "assets/images/tybe.png",
            ),
          ),
          Image(
            image: AssetImage(
              "assets/images/face.png",
            ),
          ),
          Image(
            image: AssetImage(
              "assets/images/ins.png",
            ),
          ),
          Image(
            image: AssetImage(
              "assets/images/telegram.png",
            ),
          ),
          Image(
            image: AssetImage(
              "assets/images/tiktok.png",
            ),
          ),
        ],
      ),
    );
  }
}