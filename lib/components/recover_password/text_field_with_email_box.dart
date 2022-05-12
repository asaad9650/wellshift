import 'package:flutter/material.dart';

Widget textfieldWithEmailBox(
  double height,
  double width,
  String text,
  String hintText,
  Color borderColor,
  Color backgroundColor,
  Color textColor,
  Color hintTextColor,
  TextEditingController emailController,
  bool is_password,
) {
  return Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      border: Border.all(
        width: 1.5,
        color: borderColor,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 21.333333333333332,
              color: textColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          TextFormField(
            enabled: true,
            controller: emailController,
            obscureText: is_password,
            style: TextStyle(
              fontSize: 17.333333333333332,
              color: hintTextColor,
              fontWeight: FontWeight.w400,
            ),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration.collapsed(
              hintText: hintText,
              border: InputBorder.none,
              hintStyle: TextStyle(
                fontSize: 17.333333333333332,
                color: hintTextColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
