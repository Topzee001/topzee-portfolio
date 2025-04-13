import 'package:flutter/material.dart';
import 'package:my_portfolio/components/components.dart';

import 'model.dart';
import 'widgets/project_card.dart';

class ProtfolioDesktop extends StatelessWidget {
  const ProtfolioDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      // height: 500,
      width: screenWidth,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.06, vertical: screenHeight * 0.02),
            child: const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: CustomSectionHeading1(text: "Portfolio")),
                  Center(
                    child: CustomSectionSubHeading(
                        text: "Here are few samples of my previous work \n"),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          //project card
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < personalProjectUtils.length; i++)
                  ProjectCardWidget(
                    project: personalProjectUtils[i],
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
