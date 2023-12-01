import 'package:elixir/common/widgets/suceess_screen/success_screen.dart';
import 'package:elixir/features/authentication/screens/LoginPages/loginPage.dart';
import 'package:elixir/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_string.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(
                    () => const LoginScreen(),
                  ),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSize.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                image: const AssetImage(
                  "assets/Image/animation/new1.png",
                ),
                width: HelperFunction.screenWidth() * 0.5,
              ),
              const SizedBox(
                height: CustomSize.spaceBtwSections,
              ),

              //title and subtitle
              Text(
                CustomText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CustomSize.spaceBtwItems,
              ),
              Text(
                CustomText.confirmEmailSub,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CustomSize.spaceBtwSections,
              ),

              //button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(
                          () => SuccessScreen(
                            onPressed: () => Get.to(() => const LoginScreen()),
                            title: CustomText.yourAccountCreatedTitle,
                            image: "assets/Image/animation/new2.png",
                            subtitle: CustomText.yourAccountCreatedSubTitle,
                          ),
                        ),
                    child: const Text(CustomText.Continue)),
              ),
              const SizedBox(
                height: CustomSize.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(CustomText.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
