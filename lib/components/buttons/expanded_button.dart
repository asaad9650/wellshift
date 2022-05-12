import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget expandedButton(Color color, String text, String route, String data) {
  return Row(
    children: [
      Expanded(
        child: ElevatedButton(
          onPressed: () {
            // debugPrint('ElevatedButton Clicked');
            Get.toNamed(route, arguments: data);
          },
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromRGBO(3, 100, 173, 1),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                // side: BorderSide(color: Colors.red),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
