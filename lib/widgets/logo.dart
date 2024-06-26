import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        '</ Topzee >  ',
        style: GoogleFonts.caveat(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: CustomColor.greenPrimary),
      ),
    );
  }
}
