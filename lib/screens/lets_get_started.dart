import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wellshift/components/app_bar/back_button_with_text.dart';
import 'package:wellshift/components/buttons/expanded_button.dart';
import 'package:wellshift/components/buttons/skip_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wellshift/components/lets_get_started/emoji_with_text.dart';
import 'package:wellshift/components/message_box/message_box.dart';

class LetsGetStarted extends StatefulWidget {
  const LetsGetStarted({Key? key}) : super(key: key);

  @override
  State<LetsGetStarted> createState() => _LetsGetStartedState();
}

class _LetsGetStartedState extends State<LetsGetStarted> {
  TextEditingController messageController = TextEditingController();
  List<String> reaction_path = [
    'assets/icons/Weary Face.svg',
    'assets/icons/Anxious Face.svg',
    'assets/icons/Loudly Crying Face.svg',
    'assets/icons/Sad But Relieved Face.svg',
    'assets/icons/Face With Open Mouth.svg',
    'assets/icons/Slightly Smiling Face.svg',
    'assets/icons/Grinning Squinting Face.svg',
    'assets/icons/Face With Tears Of Joy.svg'
  ];
  List<String> reaction_name = [
    "Angery",
    "Anxious",
    "Frightened",
    "Saddened",
    "Suspended",
    "Content",
    "Happy",
    "Joyful"
  ];
  
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: const Color.fromRGBO(187, 223, 250, 1),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: height * 0.03,
                      // ),
                      // GestureDetector(
                      //     onTap: () {
                      //       Get.back();
                      //     },
                      //     child: backButtonWithText(context, width, "Back")),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Text(
                        "Let’s get started!",
                        style: TextStyle(
                          fontSize: 28,
                          color: Color.fromRGBO(3, 100, 173, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const Text(
                        "Check out your emotional status by answering the following questions",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18.666666666666668,
                          color: Color.fromRGBO(20, 124, 203, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      const Text(
                        "How do you feel today?",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 21.333333333333332,
                          color: Color.fromRGBO(20, 124, 203, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),

                      GridView.builder(
                          shrinkWrap: true,
                          // scrollDirection: Axis.horizontal,
                          itemCount: reaction_name.length,
                          gridDelegate: width < 400
                              ? const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 0,
                                  mainAxisSpacing: 0)
                              : const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 0,
                                  mainAxisSpacing: 0),
                          itemBuilder: (context, index) {
                            return emojiWithText(
                                assetName: reaction_path[index],
                                text: reaction_name[index],
                                selectedColor: Color.fromRGBO(232, 145, 51, 1),
                                unSelectedColor:
                                    Color.fromRGBO(20, 124, 203, 1),
                                height: height,
                                width: width);
                          }),

                      SizedBox(
                        height: height * 0.02,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(250, 251, 255, 1),
                          border: Border.all(
                            width: 1.5,
                            color: Color.fromRGBO(3, 100, 173, 0.4),
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
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: messageBox(
                                    messageController,
                                    Color.fromRGBO(1, 40, 69, 1),
                                    Color.fromRGBO(214, 214, 214, 1),
                                    'What is in your mind...',
                                    3,
                                    3),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      expandedButton(
                          Color.fromRGBO(255, 255, 255, 1), 'Send', '/', ''),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          skipButton(
                              "Skip",
                              const Color.fromRGBO(232, 145, 51, 1),
                              FontWeight.w600,
                              '/'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
