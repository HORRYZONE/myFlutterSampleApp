import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sampleflutterapp/constant/color.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/sizes.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';

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
              Container(
                padding: EdgeInsets.all(tDefaultSize),
                color: tOnBoardingPage1Color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(tOnboardingImage1, height: size.height * 0.5,),    //set height of image to 50% of screen
                    Column(
                      children: [
                        Text(
                          tOnboardingTitle1,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          tOnboardingSubTitle1,
                          style: Theme.of(context).textTheme.labelMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Text(tOnboardingCounter1, style: Theme.of(context).textTheme.titleMedium,),
                    SizedBox(height: 50.0,)
                  ],
                ),
              ),
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
