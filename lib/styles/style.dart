import 'package:flutter/material.dart';

import '../constants/colors.dart';

BoxDecoration kAppbarDecoration = BoxDecoration(
  gradient: const LinearGradient(
    end: Alignment.centerRight,
    colors: [
      Colors.transparent,
      CustomColor.bgLight1,
    ],
  ),
  borderRadius: BorderRadius.circular(100),
);
