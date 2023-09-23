import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sampleflutterapp/constant/color.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/sizes.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';
import 'package:sampleflutterapp/features/authentication/screens/login/login_footer_widget.dart';
import 'package:sampleflutterapp/features/authentication/screens/login/login_form_widget.dart';
import 'package:sampleflutterapp/common_widget/form/form_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child:  const Center(
              child: Column(
                children: [
                  /*-- Section 01 --*/
                  FormHeaderWidget(image: tLoginImage, title: tLoginTitle,),
                  /*-- End --*/

                  /*-- Section 02 [form] --*/
                  LoginForm(),
                  /*-- End --*/

                  /*-- Section 03 [alt login] --*/
                  LoginFooterWidget(),
                  /*-- End --*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


