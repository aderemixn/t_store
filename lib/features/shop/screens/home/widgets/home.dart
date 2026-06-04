import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/home/promo_slider.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header --- Tutorial [Section # 3, Video # 2]
               const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar -- Tutorial [Section # 3, Video # 3]
                   THomeAppBar(),
                   SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Search Bar -- Tutorial [Section # 3, Video # 4]
                   TSearchContainer(text: 'Search in Store'),
                   SizedBox(height: TSizes.spaceBtwSections),
                  
                  /// -- Categories List -- Tutorial [Section # 3, Video # 4]
                  Padding(
                    padding:  EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      /// Heading
                       TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white,),
                       SizedBox(height: TSizes.spaceBtwItems),

                      /// Categories
                      THomeCategories()
                    ],
                  ),
                  )
                ],
              ),
              ),

              /// Body -- Tutorial [Section #3, Video #5 ]
              Padding(
                padding:  const EdgeInsets.all(TSizes.defaultSpace),

                child: Column(
                  children: [
                    /// Promo Slider
                    const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3],),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// Heading
                    TSectionHeading(title: 'Popular Products', onPressed: (){}),
                    const SizedBox(height: TSizes.spaceBtwItems),
                  
                    /// Popular Products
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical())
                  ],
                ),

                
              )
            
          ],
        ),
      ),
    );
  }
}

