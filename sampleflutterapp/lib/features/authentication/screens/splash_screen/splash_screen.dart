import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/sizes.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';
import 'package:sampleflutterapp/common_widget/fade_in_animation/fade_in_animation_controller.dart';

import '../../../../constant/color.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();

    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(splashController: splashController),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 150,
              left: splashController.animate.value ? tDefaultSize : -150,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      tAppTagline,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? 210 : 0,
              left: tDefaultSize,
              child: AnimatedOpacity(
                  duration: Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: SvgPicture.asset(tSplashImage)),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: 40,
              right: splashController.animate.value ? tDefaultSize : 0,
              child: Container(
                width: tSpalashContainerSize,
                height: tSpalashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: lightActionGreen,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

