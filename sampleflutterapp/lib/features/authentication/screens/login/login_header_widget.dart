import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(tLoginImage),
        Text(
          tLoginTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
