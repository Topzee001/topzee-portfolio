import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/components/components.dart';
import 'package:my_portfolio/components/sns_links.dart';

import '../../components/colors.dart';
import 'skills.dart';
import 'dart:js' as js;

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
      // width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
      color: CustomColor.bgLight1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHeader(
              text: 'About Me',
            ),
            CustomSubheader(
              text: 'Get to know me',
              fontSize: screenWidth * 0.02,
            ),
            //profile section
            const SizedBox(height: 30),

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
                        // fit:
                        //     screenWidth < 1230 ? BoxFit.fitWidth : BoxFit.cover,
                        // height: screenWidth < 1230 ? null : screenHeight * 0.5,
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
                              // "My name is Ibrahim, popularly called Topzee, but you can call me Temitope. I'm a senior mobile developer with over 1+ years of IT experience. I have worked on several mobile solutions ranging from ISP Company App, restaurant NFC technology solution, to e-commerce and beyond.",
                              // "Ibrahim Temitope is a software engineer who specializes in mobile development and currently exploring backend development. He is passionate about building scalable software solutions that improve business efficiency. He has developed an ERP system currently in use at Estream Networks, streamlining operations and improving workflow for engineers and staff.",
                              "Ibrahim Temitope (Topzee) is a Mobile Developer at Estream Networks, where he is the sole engineer building and scaling a robust ERP application that streamlines core company operations. From field service to internal workflows. He is passionate about solving real-world problems with elegant mobile solutions and is currently expanding the app with the support of a dedicated designer, making it more user-centric and scalable.",

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
                              // "Currently, I am the lead Mobile Developer at Estream Networks. I specialize in front-end development and make it my mission to translate user-focused designs into pixel-perfect applications. i'm always passionate about creating, learning, exploring which helps to contribute to my skill and focus on growth.",
                              "He is a 2x finalist of the prestigious fast paced HNG Internship, where he contributed to impactful projects like an eCommerce boilerplate app and Telex, a fully shipped MVP that demonstrates his ability to collaborate, lead, and deliver under pressure. He also built a cutting-edge NFC restaurant app, showcasing his versatility and drive for innovation.",

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
                              // "In 2023, I graduated from the University of Ilorin with B.Eng Electrical and Electronics with major in Computer and Controls. \n\nI spend my free time playing chess, video games or watching animes and i also do watch football matches on weekends.",
                              "Temitope holds a B.Eng in Electrical and Electronics Engineering (Computer and Controls focus) from the University of Ilorin, where he graduated in 2023. He aspires to become a globally impactful engineer, building products that make life easier, smarter, and more connected across the world.",

                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth < 1230
                                    ? screenWidth * 0.02
                                    : screenWidth * 0.015,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
            // const SizedBox(
            //   height: 30,
            // ),
            SizedBox(
              height: screenHeight * 0.025,
            ),
            // //technologies used section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(color: Colors.grey.shade900, width: 1.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  "Technologies I have worked with:",
                  style: TextStyle(
                    // color: CustomColor.greenPrimary,
                    fontSize: screenWidth < 1230
                        ? screenWidth * 0.02
                        : screenWidth * 0.015,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Skills(),
                // SizedBox(
                //   height: screenHeight * 0.02,
                // ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(color: Colors.grey.shade900, width: 1.0),
                    ),
                  ),
                ),
              ],
            ),
            //container
            SizedBox(
              height: screenHeight * 0.025,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 40.0,
                      width: 150,
                      child: TextButton(
                          onPressed: () {
                            js.context.callMethod('open', [SnsLinks.linkedin]);
                          },
                          child: const Text(
                            "Resume",
                          )),
                    ),
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
