import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/sizes.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';

import '../../../../constant/color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(tSplashTopIcon),
            
              ),
           Positioned(
            top: 150,
            left: tDefaultSize,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tAppName, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w400),),
                Text(tAppTagline, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),),
              ],
            ),
            
              ),
            Positioned(
            bottom: 210,
            left: tDefaultSize,
            child: SvgPicture.asset(tSplashImage),
            
              ),
            Positioned(
            bottom: 40,
            right: tDefaultSize,
            child: Container(
              width: tSpalashContainerSize,
              height: tSpalashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: lightActionGreen,
              ),
            ),
            
              ),
        ],
      ),
    );
  }
}