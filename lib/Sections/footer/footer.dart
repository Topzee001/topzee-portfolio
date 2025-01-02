import 'package:flutter/material.dart';
import 'package:my_portfolio/components/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Text('C  2024 by Ibrahim Temitope Sakariyah'),
            SizedBox(
              height: 30,
            ),
            Text(
              'Developed with Flutter ',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
