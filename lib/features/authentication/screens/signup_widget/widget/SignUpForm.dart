import 'package:elixir/features/authentication/screens/signup_widget/widget/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../utils/helpers/helper_function.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: CustomText.firstname,
                    labelStyle: TextStyle(
                        color: dark
                            ? CustomColors.light
                            : CustomColors.dark),
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: CustomSize.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: CustomText.lastname,
                    labelStyle: TextStyle(
                        color: dark
                            ? CustomColors.light
                            : CustomColors.dark),
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: CustomSize.spaceBtwInputFields,
          ),

          //username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: CustomText.username,
              labelStyle: TextStyle(
                  color:
                  dark ? CustomColors.light : CustomColors.dark),
              prefixIcon: const Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: CustomSize.spaceBtwInputFields,
          ),

          //email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: CustomText.email,
              labelStyle: TextStyle(
                  color:
                  dark ? CustomColors.light : CustomColors.dark),
              prefixIcon: const Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: CustomSize.spaceBtwInputFields,
          ),

          //phone no
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: CustomText.phoneNo,
              labelStyle: TextStyle(
                  color:
                  dark ? CustomColors.light : CustomColors.dark),
              prefixIcon: const Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: CustomSize.spaceBtwInputFields,
          ),

          //password
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: CustomText.password,
              labelStyle: TextStyle(
                  color:
                  dark ? CustomColors.light : CustomColors.dark),
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: CustomSize.spaceBtwInputFields,
          ),
          Row(
            children: [
              SizedBox(
                  height: 24,
                  width: 24,
                  child: Checkbox(value: true, onChanged: (val) {})),
              const SizedBox(
                width: CustomSize.spaceBtwItems-10,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '${CustomText.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: '${CustomText.privacyPolicy} \n',
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                        color:
                        dark ? Colors.white : CustomColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                        dark ? Colors.white : CustomColors.primary,
                      ),
                    ),
                    TextSpan(
                        text: '\t ${CustomText.and} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: '${CustomText.termsOfUse} ',
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                        color:
                        dark ? Colors.white : CustomColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                        dark ? Colors.white : CustomColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: CustomSize.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(()=> const VerifyEmailScreen()) ,
              child: const Text(CustomText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}