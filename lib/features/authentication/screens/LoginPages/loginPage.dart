
import 'package:elixir/common/widgets/widget_login_signup/FormDivider.dart';
import 'package:elixir/common/widgets/widget_login_signup/SocialButton.dart';
import 'package:elixir/features/authentication/screens/LoginPages/widget/LoginForm.dart';
import 'package:elixir/features/authentication/screens/LoginPages/widget/LoginHeader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text_string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyles.paddingWithAppBArHeight,
          child: Column(
            children: [
              // Logo title and subtitle
              const LoginHeader(),

              //Form
              const LoginForm(),

              //Divider

              FormDivider(dividerText:CustomText.orSignInWith.capitalize!,),

              const SizedBox(
                height: CustomSize.spaceBtwSections,
              ),

              //Footer
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}







