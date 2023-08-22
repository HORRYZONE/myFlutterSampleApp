import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sampleflutterapp/constant/color.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/sizes.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';
import 'package:sampleflutterapp/features/authentication/models/model_onboarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;     //check screen size
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


