import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/Colors.dart';


class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: TColors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: TColors.black),
    selectedColor: TColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: TColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: TColors.grey,
    labelStyle: TextStyle(color: TColors.white),
    selectedColor: TColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: TColors.white,
  );
}