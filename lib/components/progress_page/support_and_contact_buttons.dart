import 'package:flutter/material.dart';

Widget supportAndContact(double height, double width) {
  return Padding(
    padding: const EdgeInsets.only(left: 14.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Image.asset("assets/icons/Vector.png"),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Text(
                    "Contact team",
                    style: TextStyle(
                      fontSize: 18.666666666666668,
                      color: Color.fromRGBO(3, 100, 173, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: width * 0.05,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Image.asset("assets/icons/Vector_2.png"),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Text(
                    "Support group",
                    style: TextStyle(
                      fontSize: 18.666666666666668,
                      color: Color.fromRGBO(3, 100, 173, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
