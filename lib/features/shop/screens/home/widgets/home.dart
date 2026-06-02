import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/containers/search_container.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header --- Tutorial [Section # 3, Video # 2]
            TPrimaryHeaderContainer(
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
              )
            
          ],
        ),
      ),
    );
  }
}




