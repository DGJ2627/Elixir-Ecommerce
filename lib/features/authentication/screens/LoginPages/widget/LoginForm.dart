import 'package:elixir/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:elixir/features/authentication/screens/signup_widget/signup.dart';
import 'package:elixir/navigation_menu.dart';
import 'package:elixir/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../utils/helpers/helper_function.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: CustomSize.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration:  InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: CustomText.email,labelStyle: TextStyle(color: dark ? CustomColors.light : CustomColors.dark),
              ),
            ),
            const SizedBox(
              height: CustomSize.spaceBtwInputFields,
            ),

            //password
            TextFormField(
              decoration:  InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: CustomText.password,labelStyle: TextStyle(color: dark ? CustomColors.light : CustomColors.dark),
                suffixIcon: const Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: CustomSize.spaceBtwInputFields / 2,
            ),

            //remember me and forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //remember me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text(CustomText.rememberMe),
                  ],
                ),

                //forget password
                TextButton(
                    onPressed: () => Get.to(()=> const ForgetPassword(),),
                    child: const Text(CustomText.forgetPassword)),
              ],
            ),
            const SizedBox(
              height: CustomSize.spaceBtwSections,
            ),

            //sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=> Get.to(()=> const NavigationMenu(),),
                child: const Text(CustomText.signIn),
              ),
            ),
            const SizedBox(
              height: CustomSize.spaceBtwItems,
            ),
            //create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: ()=> Get.to(() => const SignUpScreen()),
                child: const Text(CustomText.createAccount),
              ),
            ),
            const SizedBox(
              height: CustomSize.spaceBtwSections,
            ),
          ],
        ),
      ),
    );
  }
}