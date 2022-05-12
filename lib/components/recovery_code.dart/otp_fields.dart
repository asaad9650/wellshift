import 'package:flutter/material.dart';

class OtpInput extends StatelessWidget {
  final double height;
  final double width;
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.height, this.width, this.controller, this.autoFocus,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.05,
      width: width * 0.13,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        style: TextStyle(
          color: Color.fromRGBO(132, 175, 209, 1),
          fontSize: 20,
        ),
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: InputBorder.none,
            counterText: '',
            hintText: '0',
            hintStyle: TextStyle(
              // color: Colors.black,
              fontSize: 20,
              color: Color.fromRGBO(132, 175, 209, 0.5),
            )),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
