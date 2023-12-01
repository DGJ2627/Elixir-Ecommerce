import 'package:elixir/features/authentication/controller_onboarding/onboarding_controller.dart';
import 'package:elixir/features/authentication/screens/onboaring/widget/OnBoardingNextButton.dart';
import 'package:elixir/features/authentication/screens/onboaring/widget/OnBoardingSkipWidget.dart';
import 'package:elixir/features/authentication/screens/onboaring/widget/onboaring_Page.dart';
import 'package:elixir/features/authentication/screens/onboaring/widget/onborading_dot_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/images_string.dart';
import '../../../../utils/constants/text_string.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingWidget(
                image: AppAssetsImage.onBoardingImage1,
                title: CustomText.onBoardingTitle1,
                subtitle: CustomText.onBoardingSubTitle1,
              ),
              OnBoardingWidget(
                image: AppAssetsImage.onBoardingImage2,
                title: CustomText.onBoardingTitle2,
                subtitle: CustomText.onBoardingSubTitle2,
              ),
              OnBoardingWidget(
                image: AppAssetsImage.onBoardingImage3,
                title: CustomText.onBoardingTitle3,
                subtitle: CustomText.onBoardingSubTitle3,
              ),
            ],
          ),

          //skip button
          const OnBoardingSkipWidget(),

          //dot navigation smoothPageIndicator
          const OnBoardingDotNavigation(),

          //circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
