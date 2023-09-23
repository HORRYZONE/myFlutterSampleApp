import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';
import 'package:sampleflutterapp/features/authentication/screens/welcome/welcome_screen.dart';

import '../../../constant/color.dart';
import '../../../constant/image_strings.dart';
import '../models/model_onboarding.dart';
import '../screens/onboarding_screen/onboarding_page_widget.dart';

class OnboardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    onBoardingPageWidget(
      model: OnBoardingModel(
          image: tOnboardingImage1,
          title: tOnboardingTitle1,
          subTitle: tOnboardingSubTitle1,
          counterText: tOnboardingCounter1,
          bgColor: tOnBoardingPage1Color,
          ),
    ),
    onBoardingPageWidget(
      model: OnBoardingModel(
          image: tOnboardingImage2,
          title: tOnboardingTitle2,
          subTitle: tOnboardingSubTitle2,
          counterText: tOnboardingCounter2,
          bgColor: tOnBoardingPage2Color,
          ),
    ),
    onBoardingPageWidget(
      model: OnBoardingModel(
          image: tOnboardingImage3,
          title: tOnboardingTitle3,
          subTitle: tOnboardingSubTitle3,
          counterText: tOnboardingCounter3,
          bgColor: tOnBoardingPage3Color,
          ),
    ),
  ];

  void onPageChangeCallback(int activePageIndex) => currentPage.value = activePageIndex; //func to change page index
  skip() => controller.jumpToPage(page: 2); //function for skip btn

  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
    if (nextPage == 3) {
      Get.to(() => const WelcomePage());
    }
  }
}
