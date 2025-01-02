import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

import '../components/colors.dart';
import '../components/nav_items.dart';
import '../styles/style.dart';
import 'logo.dart';

class MyDeskbar extends StatelessWidget {
  const MyDeskbar({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      width: double.maxFinite,
      decoration: kAppbarDecoration,
      child: Row(
        children: [
          MyLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < headTitle.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: TextButton(
                onPressed: () {
                  onNavMenuTap(i);
                },
                child: Text(
                  headTitle[i],
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.whitePrmary),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
