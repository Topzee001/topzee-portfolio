import 'package:flutter/material.dart';
import 'package:my_portfolio/components/components.dart';

class ProtfolioDesktop extends StatelessWidget {
  const ProtfolioDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Scaffold(
      body: SizedBox(
        // height: 500,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: screenHeight * 0.02,
            // ),
            Column(
              children: [
                const CustomHeader(text: "Portfolio"),
                CustomSubheader(
                  text: 'Here are few samples of my previous projects \n\n',
                  fontSize: screenWidth < 1230
                      ? screenWidth * 0.02
                      : screenWidth * 0.015,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
