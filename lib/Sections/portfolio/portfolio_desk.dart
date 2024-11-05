import 'package:flutter/material.dart';

import '../../components/components.dart';
import 'card.dart';
import 'model.dart';

class PortfolioDesk extends StatelessWidget {
  const PortfolioDesk({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return SizedBox(
      // height: 500,
      // width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.06, vertical: screenHeight * 0.02),
            child: const Wrap(
              children: [
                CustomHeader(text: "Portfolio"),
                CustomSubheader(
                  text: 'Few of my previous projects are below\n\n',
                  // fontSize: screenWidth < 1230
                  //     ? screenWidth * 0.015
                  //     : screenWidth * 0.04,
                ),
              ],
            ),
          ),
          SizedBox(
            height:
                screenWidth > 1200 ? screenHeight * 0.45 : screenWidth * 0.21,
            child: ListView.separated(
              // padding: EdgeInsets.symmetric(vertical: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final projects = personalProjectUtils[index];
                return ProjectCard(
                  backImage: projects.image,
                  // bottomWidget: bottomWidget,
                  projectIcon: projects.image,
                  projectTitle: projects.title,
                  projectDescription: projects.subtitle,
                  projectLink: projects.githubLink.toString(),
                  //projectIconData: projectIconData,
                  cardWidth: screenWidth < 1200
                      ? screenWidth * 0.3
                      : screenWidth * 0.35,
                  cardHeight: screenWidth < 1200
                      ? screenHeight * 0.32
                      : screenHeight * 0.1,
                );
              },
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: screenWidth * 0.015,
                );
              },
              itemCount: personalProjectUtils.length,
            ),
          ),
        ],
      ),
    );
  }
}
