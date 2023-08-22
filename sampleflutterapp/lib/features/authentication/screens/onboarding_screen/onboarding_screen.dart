import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sampleflutterapp/constant/color.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/sizes.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';
import 'package:sampleflutterapp/features/authentication/models/model_onboarding.dart';
import 'package:sampleflutterapp/features/authentication/screens/onboarding_screen/onboarding_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //check screen size

    final pages = [
      onBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnboardingImage1,
            title: tOnboardingTitle1,
            subTitle: tOnboardingSubTitle1,
            counterText: tOnboardingCounter1,
            bgColor: tOnBoardingPage1Color,
            height: size.height),
      ),
      onBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnboardingImage2,
            title: tOnboardingTitle2,
            subTitle: tOnboardingSubTitle2,
            counterText: tOnboardingCounter2,
            bgColor: tOnBoardingPage2Color,
            height: size.height),
      ),
      onBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnboardingImage3,
            title: tOnboardingTitle3,
            subTitle: tOnboardingSubTitle3,
            counterText: tOnboardingCounter3,
            bgColor: tOnBoardingPage3Color,
            height: size.height),
      ),
    ];
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              onBoardingPage(size: size),
              Container(
                color: tOnBoardingPage2Color,
              ),
              Container(
                color: tOnBoardingPage3Color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
