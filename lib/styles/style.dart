import 'package:flutter/material.dart';

import '../components/colors.dart';

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

const Color darKLightNavy = Color(0xFF112240);
