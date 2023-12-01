import 'package:elixir/common/widgets/producat_cards/product_card_vertical.dart';
import 'package:elixir/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:elixir/utils/constants/size.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../../common/widgets/layout/grid_layout.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/images_string.dart';
import 'home_appbar.dart';
import 'home_catrgories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header section

            const PrimaryHeaderContainer(
              child: Column(
                children: <Widget>[
                  //------------------------------------AppBar------------------------------------
                  HomeAppBar(),
                  SizedBox(height: CustomSize.spaceBtwSections),

                  //------------------------------------searchbar------------------------------------
                  SearchContainer(text: "Search in Store"),
                  SizedBox(height: CustomSize.spaceBtwSections),

                  //------------------------------------Categories------------------------------------
                  Padding(
                    padding: EdgeInsets.only(left: CustomSize.defaultSpace),
                    child: Column(
                      children: [
                        //--------Heading--------
                        SectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: CustomSize.spaceBtwSections),

                        //--------categories--------
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //----------Body---------
            Padding(
              padding: const EdgeInsets.all(CustomSize.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      AppAssetsImage.banner1,
                      AppAssetsImage.banner2,
                      AppAssetsImage.banner3,
                    ],
                  ),
                  const SizedBox(
                    height: CustomSize.spaceBtwSections,
                  ),

                  //popular product
                  GridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




