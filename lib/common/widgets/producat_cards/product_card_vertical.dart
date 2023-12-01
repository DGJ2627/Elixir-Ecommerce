import 'package:elixir/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:elixir/utils/constants/colors.dart';
import 'package:elixir/utils/constants/images_string.dart';
import 'package:elixir/utils/constants/size.dart';
import 'package:elixir/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../styles/shadow.dart';
import '../icons/circular_icon.dart';
import '../images/round_image.dart';
import '../texts/product_title.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(CustomSize.productImageRadius),
          color: HelperFunction.isDarkMode(context)
              ? CustomColors.darkGrey
              : Colors.white,
        ),
        child: Column(
          children: [
            // Thumbnail,Wishlist button
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(CustomSize.sm),
              backgroundColor: dark ? CustomColors.dark : CustomColors.light,
              child: Stack(
                children: [
                  //Thumbnail
                  const RoundImages(
                    imageUrl: AppAssetsImage.productImage13,
                    applyImageRadius: true,
                  ),

                  //Sales tag
                  Positioned(
                    top: 12,
                    left: 2,
                    child: RoundedContainer(
                      radius: CustomSize.sm,
                      backgroundColor: CustomColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: CustomSize.sm, vertical: CustomSize.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: CustomColors.black),
                      ),
                    ),
                  ),

                  //Favourite icon button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icons: Iconsax.heart,
                      // color: CupertinoColors.destructiveRed,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: CustomSize.spaceBtwItems / 2,
            ),

            //Details
            Padding(
              padding: const EdgeInsets.only(left: CustomSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTitleText(
                    title: 'Black Bata Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: CustomSize.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Bata",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: CustomSize.xs),
                      const Icon(
                        Iconsax.verify5,
                        color: CustomColors.primary,
                        size: 12,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //price
                      Text(
                        '₹5000',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),

                      //Add Card btn
                      Container(
                        decoration: const BoxDecoration(
                          color: CustomColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(CustomSize.cardRadiusMd),
                            bottomRight:
                                Radius.circular(CustomSize.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: CustomSize.iconLg * 1.2,
                          height: CustomSize.iconLg * 1.2,
                          child: Icon(
                            Iconsax.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
