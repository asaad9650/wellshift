import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellshift/components/app_bar/back_button_with_text.dart';
import 'package:wellshift/components/buttons/expanded_button.dart';
import 'package:wellshift/components/recover_password/text_field_with_email_box.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({Key? key}) : super(key: key);

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  TextEditingController emailController = TextEditingController();
  @override
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
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.03,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: backButtonWithText(context, width, "Login")),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Text(
                        "Recover Password",
                        style: TextStyle(
                          fontSize: 28,
                          color: Color.fromRGBO(3, 100, 173, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Text(
                        "Please enter your email and we will send you a recovery code",
                        style: TextStyle(
                          fontSize: 18.666666666666668,
                          color: Color.fromRGBO(20, 124, 203, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     color: Color.fromRGBO(231, 245, 247, 1),
                      //     border: Border.all(
                      //       width: 1.5,
                      //       color: Color.fromRGBO(232, 145, 51, 0.3),
                      //     ),
                      //     borderRadius: const BorderRadius.all(
                      //       Radius.circular(10.0),
                      //     ),
                      //   ),
                      //   child: Padding(
                      //       padding: const EdgeInsets.all(8.0),
                      //       child: ),
                      // ),
                      textfieldWithEmailBox(
                          height,
                          width,
                          'Email',
                          'example@example.com',
                          Color.fromRGBO(232, 145, 51, 0.3),
                          Color.fromRGBO(231, 245, 247, 1),
                          Color.fromRGBO(110, 158, 194, 1),
                          Color.fromRGBO(132, 175, 209, 1),
                          emailController,
                          false),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      expandedButton(
                          Color.fromRGBO(3, 100, 173, 1),
                          Color.fromRGBO(255, 255, 255, 1),
                          'Send Code',
                          '/recovery_code',
                          emailController.text)
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
