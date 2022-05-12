import 'package:flutter/material.dart';

Widget suggestions(double height, double width, String filename, String text) {
  return Stack(
    children: [
      Container(
        // padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              offset: const Offset(2.5, 2.5),
              blurRadius: 16,
            ),
          ],
        ),
        child: Image.asset(
          filename,
        ),
      ),
      Positioned(
        left: 5,
        bottom: 10,
        // alignment: Alignment.topLeft,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18.66666,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}
