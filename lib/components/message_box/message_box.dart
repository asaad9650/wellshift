import 'package:flutter/material.dart';

Widget messageBox(TextEditingController messageController, Color textColor,
    Color hintColor, String hintText, int maxLines, int minLines) {
  return TextFormField(
    enabled: true,
    minLines: minLines,
    maxLines: maxLines,
    controller: messageController,
    obscureText: false,
    style: TextStyle(
      fontSize: 17.333333333333332,
      color: textColor,
      fontWeight: FontWeight.w400,
    ),
    keyboardType: TextInputType.text,
    decoration: InputDecoration.collapsed(
      hintText: hintText,
      border: InputBorder.none,
      hintStyle: TextStyle(
        fontSize: 17.333333333333332,
        color: hintColor,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
