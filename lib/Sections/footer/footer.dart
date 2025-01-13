import 'package:flutter/material.dart';
import 'package:my_portfolio/components/colors.dart';

import '../../components/sns_links.dart';
import 'dart:js' as js;

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Text("© ${DateTime.now().year}  by Ibrahim Temitope Sakariyah"),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Developed in 💙 with ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: CustomColor.whiteSecondary,
                  ),
                ),
                InkWell(
                  onTap: () =>
                      js.context.callMethod('open', [SnsLinks.portfolioGithub]),
                  child: const Text(
                    "Flutter",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
