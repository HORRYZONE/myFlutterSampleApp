import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sampleflutterapp/common_widget/fade_in_animation/animation_design.dart';
import 'package:sampleflutterapp/common_widget/fade_in_animation/fade_in_animation_model.dart';
import 'package:sampleflutterapp/constant/color.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/sizes.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';

import '../../../../common_widget/fade_in_animation/fade_in_animation_controller.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var height = mediaQuery.size.height;

    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? darkPrimaryColor : lightPrimaryColor,
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animate: TAnimatePosition(
              bottomBefore: -100,
              bottomAfter: 0,
              leftBefore: 0,
              leftAfter: 0,
              topBefore: 0,
              topAfter: 0,
              rightBefore: 0,
              rightAfter: 0,
            ),
            child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    tWelcomeImage,
                    height: height * 0.6,
                  ),
                  Column(
                    children: [
                      Text(
                        tWelcomeTitle,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        tWelcomeSubTitle,
                        style: Theme.of(context).textTheme.labelMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(tLogin.toUpperCase(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(tSignup.toUpperCase(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
