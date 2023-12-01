import 'package:elixir/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text_string.dart';
import '../../../../utils/helpers/helper_function.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(CustomSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            Text(
              CustomText.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: CustomSize.spaceBtwItems,
            ),
            Text(
              CustomText.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: CustomSize.spaceBtwSections*2,
            ),

            //text field
            TextFormField(
              decoration:  InputDecoration(
                labelText: CustomText.email,labelStyle: TextStyle(color: dark ? CustomColors.light : CustomColors.dark),
                prefixIcon: const Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(
              height: CustomSize.spaceBtwSections,
            ),

            //submit btn
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=> Get.off(()=> const ResetPassword(),), child: const Text(CustomText.submit),)),
          ],
        ),
      ),
    );
  }
}
