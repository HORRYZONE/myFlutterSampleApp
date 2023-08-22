import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sampleflutterapp/constant/color.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/sizes.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';
import 'package:sampleflutterapp/features/authentication/controllers/onboarding_controller.dart';
import 'package:sampleflutterapp/features/authentication/models/model_onboarding.dart';
import 'package:sampleflutterapp/features/authentication/screens/onboarding_screen/onboarding_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final obController = OnboardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () => obController.animateToNextSlide(),
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
              onPressed: () => obController.skip(),
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
              activeIndex: obController.currentPage.value,
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
