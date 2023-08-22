import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sampleflutterapp/constant/color.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/sizes.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';
import 'package:sampleflutterapp/features/authentication/models/model_onboarding.dart';
import 'package:sampleflutterapp/features/authentication/screens/onboarding_screen/onboarding_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

    final controller = LiquidController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20.0),
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: darkPrimaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 30,
            right: 20,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Colors.grey),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: const WormEffect(
                activeDotColor: lightActionGreen,
                dotHeight: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
