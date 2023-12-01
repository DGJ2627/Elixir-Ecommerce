import 'package:elixir/common/widgets/widget_login_signup/FormDivider.dart';
import 'package:elixir/common/widgets/widget_login_signup/SocialButton.dart';
import 'package:elixir/features/authentication/screens/signup_widget/widget/SignUpForm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text_string.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                CustomText.signupTitle,
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineMedium,
              ),
              const SizedBox(
                height: CustomSize.spaceBtwSections,
              ),

              //Form
              const SignUpForm(),
              const SizedBox(
                height: CustomSize.spaceBtwSections,
              ),

              //Divider
              FormDivider(dividerText: CustomText.orSignUpWith.capitalize!),

              const SizedBox(
                height: CustomSize.spaceBtwSections,
              ),

              //Social button
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}




