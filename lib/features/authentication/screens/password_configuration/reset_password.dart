import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/images_string.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text_string.dart';
import '../../../../utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          CustomSize.defaultSpace,
        ),
        child: Column(
          children: [
            //Image with 60% size
            Image(
              image: const AssetImage(
                AppAssetsImage.newImage2,
              ),
              width: HelperFunction.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: CustomSize.spaceBtwSections,
            ),

            //title & sub
            Text(
              CustomText.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: CustomSize.spaceBtwItems,
            ),
            Text(
              CustomText.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: CustomSize.spaceBtwSections,
            ),

            //btn
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(CustomText.done),
              ),
            ),
            const SizedBox(
              height: CustomSize.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(CustomText.resendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
