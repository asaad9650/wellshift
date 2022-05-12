import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Widget emojiWithText(String assetname, String text, Color selectedTextColor,
//     Color unSeletedTextColor, bool selected, double height, double width) {
//   return GestureDetector(
//     onTap: () {
//       selected = true;
//     },
//     child: Container(
//       padding: EdgeInsets.all(0),
//       child: Column(
//         // mainAxisAlignment: MainAxisAlignment.center,
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SvgPicture.asset(
//             assetname,
//             // height: height * 0.07,
//             // width: width * 0.15,
//             fit: BoxFit.cover,
//           ),
//           Text(
//             text,
//             // "Angery",
//             style: TextStyle(
//               fontSize: 18.666666666666668,
//               color: selected ? selectedTextColor : unSeletedTextColor,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

class emojiWithText extends StatefulWidget {
  final String assetName;
  final String text;
  final Color selectedColor;
  final Color unSelectedColor;

  final double height;
  final double width;
  const emojiWithText(
      {Key? key,
      required this.assetName,
      required this.text,
      required this.selectedColor,
      required this.unSelectedColor,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  State<emojiWithText> createState() => _emojiWithTextState();
}

class _emojiWithTextState extends State<emojiWithText> {
  bool select = false;
  // bool select = false;

  // late String assetname;
  // late String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (select) {
              select = false;
            } else {
              select = true;
            }
          });
        },
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.assetName,
              // height: height * 0.07,
              // width: width * 0.15,
              fit: BoxFit.cover,
            ),
            Text(
              widget.text,
              // "Angery",
              style: TextStyle(
                fontSize: 18.666666666666668,
                color: select ? widget.selectedColor : widget.unSelectedColor,
                fontWeight: select ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
