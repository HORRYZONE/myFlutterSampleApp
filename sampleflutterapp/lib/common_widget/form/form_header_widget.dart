import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    required this.image,
    required this.title,
    super.key,
  });

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(image),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
