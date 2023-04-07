import 'package:flutter/material.dart';
class MoreInformation extends StatefulWidget {
  const MoreInformation({Key? key}) : super(key: key);

  @override
  State<MoreInformation> createState() => _MoreInformationState();
}

class _MoreInformationState extends State<MoreInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26,width: 1.0),
              borderRadius: BorderRadius.circular(27.0),
            ),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                        "Ko'proq",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Inter-Medium.ttf"
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
