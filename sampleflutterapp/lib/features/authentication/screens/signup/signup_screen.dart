import 'package:flutter/material.dart';
import 'package:sampleflutterapp/common_widget/form/form_header_widget.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/sizes.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                FormHeaderWidget(image: tLoginImage, title: tLoginTitle)
              ],
            ),
          ),
        ),
      ),
    );
  }
}