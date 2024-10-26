import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/components/components.dart';

import '../../components/colors.dart';
import 'skills.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  bool isSvgFile(String path) {
    return path.toLowerCase().endsWith('.svg');
  }

  Widget getImage(String imagePath) {
    if (isSvgFile(imagePath)) {
      return SvgPicture.asset(imagePath);
    } else {
      return Image.asset(imagePath);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(
        // horizontal: 20,
        vertical: 10,
      ),
      //height: 500,
      width: double.infinity,
      color: CustomColor.bgLight1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHeader(
              text: 'About',
            ),
            const CustomSubheader(
              text: 'Get to know me',
            ),
            //profile section
            const SizedBox(height: 24),

            LayoutBuilder(
              builder: (context, constraints) {
                final isNarrow = constraints.maxWidth < 1230;

                final imageWidth = isNarrow
                    ? constraints.maxWidth *
                        0.3 // 30% of container width for narrow screens
                    : constraints.maxWidth *
                        0.2; // 20% of container width for wide screens
                final imageHeight = imageWidth *
                    1.5; // Make height 1.5 times the width for portrait

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile image
                    SizedBox(
                      width: imageWidth,
                      height: imageHeight,
                      child: Image.asset(
                        'assets/ibro.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    //TODO: change width to adaptive and image too
                    const SizedBox(
                      width: 20,
                    ),

                    //profile texts
                    Expanded(
                        flex: screenWidth < 1230 ? 2 : 1,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //TODO: create adaptive text widget
                              Text(
                                "Hi! My name is Ibrahim, popularly called Topzee, but you can call me Temitope. I'm a senior mobile developer with over 1+ years of IT experience. I have worked on several mobile solutions ranging from ISP Company App, restaurant NFC technology solution, to e-commerce and beyond.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth < 1230
                                      ? screenWidth * 0.02
                                      : screenWidth * 0.015,
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              Text(
                                "Currently, I am the lead Mobile Developer at Estream Networks. I specialize in front-end development and make it my mission to translate user-focused designs into pixel-perfect applications. i'm always passionate about creating, learning, exploring which helps to contribute to my skill and focus on growth.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth < 1230
                                      ? screenWidth * 0.02
                                      : screenWidth * 0.015,
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              Text(
                                "In 2023, I graduated from the University of Ilorin with B.Eng Electrical and Electronics with major in Computer and Controls. \n\nI spend my free time playing chess, video games or watching animes and i also do watch football matches on weekends.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth < 1230
                                      ? screenWidth * 0.02
                                      : screenWidth * 0.015,
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            //technologies used section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(color: Colors.grey.shade900, width: 2.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  "Technologies I've worked with",
                  style: TextStyle(
                    fontSize: screenWidth < 1230
                        ? screenWidth * 0.02
                        : screenWidth * 0.015,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Skills(),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(color: Colors.grey.shade900, width: 2.0),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
