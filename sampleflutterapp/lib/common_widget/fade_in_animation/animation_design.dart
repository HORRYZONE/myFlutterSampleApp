import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../constant/image_strings.dart';
import 'fade_in_animation_controller.dart';

class TFadeInAnimation extends StatelessWidget {
   TFadeInAnimation({
    super.key,
    required this.durationInMs,
  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value ? 0 : -30,
        left: controller.animate.value ? 0 : -30,
        child: AnimatedOpacity(
            duration: Duration(milliseconds: durationInMs),
            opacity: controller.animate.value ? 0 : -30,
            child: SvgPicture.asset(tSplashTopIcon)),
      ),
    );
  }
}
