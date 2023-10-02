import 'package:flutter/material.dart';
import 'package:sampleflutterapp/common_widget/form/form_footer_widget.dart';
import 'package:sampleflutterapp/common_widget/form/form_header_widget.dart';
import 'package:sampleflutterapp/constant/color.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/sizes.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';
import 'package:sampleflutterapp/features/authentication/screens/signup/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: const Column(
              //TEST
              children: [
                FormHeaderWidget(image: tLoginImage, title: tLoginTitle),
                SignUpFormWidget(),
                FormFooterWidget(account: tAlreadyHaveAccount, otherPage: tLogIn),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


