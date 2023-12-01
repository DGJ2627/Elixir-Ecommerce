import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_function.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: CustomSize.defaultSpace),
        child: Container(
          width: DeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(CustomSize.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? CustomColors.dark
                    : CustomColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(CustomSize.cardRadiusLg),
            border: showBorder ? Border.all(color: CustomColors.grey) : null,
          ),
          child: Row(
            children: <Widget>[
              const Icon(Iconsax.search_normal),
              const SizedBox(
                width: CustomSize.spaceBtwItems,
              ),
              Text(
                "Search in Store",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
