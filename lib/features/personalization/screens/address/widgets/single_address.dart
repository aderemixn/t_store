import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectdAddress});

  final bool selectdAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectdAddress ? TColors.primary.withValues(alpha: 0.5) : Colors.transparent,
      borderColor: selectdAddress 
          ? Colors.transparent
          : dark
             ? TColors.darkerGrey
             : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
             selectdAddress ? Iconsax.tick_circle5 : null,
             color: selectdAddress
                ? dark 
                  ? TColors.light
                  : TColors.dark
                 : null,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Doe',
               maxLines: 1,
               overflow: TextOverflow.ellipsis,
               style: Theme.of(context).textTheme.titleLarge,
           ),
            const SizedBox(height: TSizes.sm/2),
            const Text('(+234) 567 890', maxLines: 1, overflow: TextOverflow.ellipsis),
            const SizedBox(height: TSizes.sm/2),
            const Text('82356 Timmy Coves, South Liana, Maine, 87665, USA', softWrap: true,)
          ],
         )
        ],
        ),
    );
  }
}