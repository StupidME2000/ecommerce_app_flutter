import 'package:ecommerce_app/features/screens/onboarding/widgets/onboarding_navigation.dart';
import 'package:ecommerce_app/features/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommerce_app/features/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_app/features/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';


import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_strings.dart';
import '../../controllers.onboarding/onboarding.controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboaringPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnboaringPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnboaringPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3),
            ],
          ),
          const OnboardingSkip(),

          OnBoardingDotNavigation(),

          OnBoardingNextButton()
        ],
      ),
    );
  }
}



