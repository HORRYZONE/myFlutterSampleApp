

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constant/sizes.dart';
import '../../models/model_onboarding.dart';

class onBoardingPageWidget extends StatelessWidget {
  const onBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(model.image, height: model.height * 0.3,),    //set height of image to 50% of screen
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  model.subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Text(model.counterText, style: Theme.of(context).textTheme.titleMedium,),
          SizedBox(height: 50.0,)
        ],
      ),
    );
  }
}