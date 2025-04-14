import 'package:flutter/material.dart';
import 'package:my_portfolio/components/components.dart';

import '../../components/colors.dart';
import 'skills.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
        color: CustomColor.bgLight1,
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.09),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHeader(
              text: 'About',
            ),
            CustomSubheader(
              text: 'Get to know me',
              fontSize: screenWidth * 0.04,
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Text(
                // "My name is Ibrahim, popularly called Topzee. I'm a Flutter mobile developer with over 4+ years of IT experience. I have worked on several mobile solutions ranging from ISP Company App, restaurant NFC technology solution, to e-commerce and beyond.",
                // "Ibrahim Temitope is a software engineer specializing in mobile and backend development. He is passionate about building scalable software solutions that improve business efficiency. He has developed an ERP system currently in use at Estream Networks, streamlining operations and improving workflow for engineers and staff.",
                // "Ibrahim Temitope is a mobile engineer who specializes in building solutions using flutter framework. He is passionate about building scalable software solutions that improve business efficiency. He has developed an ERP system currently in use at Estream Networks, streamlining operations and improving workflow for engineers and staff.",
                "Ibrahim Temitope (Topzee) is a Mobile Developer at Estream Networks, where he is the sole engineer building and scaling a robust ERP application that streamlines core company operations. From field service to internal workflows. He is passionate about solving real-world problems with elegant mobile solutions and is currently expanding the app with the support of a dedicated designer, making it more user-centric and scalable.",
                style: TextStyle(
                  fontSize: screenHeight * 0.022,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text(
              // "Currently, I am the lead Mobile Developer at Estream Networks. I specialize in front-end development and make it my mission to translate user-focused designs into pixel-perfect applications. i'm always passionate about creating, learning, exploring which helps to contribute to my skill and focus on growth.",
              "He is a 2x finalist of the prestigious fast paced HNG Internship, where he contributed to impactful projects like an eCommerce boilerplate app and Telex, a fully shipped MVP that demonstrates his ability to collaborate, lead, and deliver under pressure. He also built a cutting-edge NFC restaurant app, showcasing his versatility and drive for innovation.",

              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: screenHeight * 0.022,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text(
              // "In 2023, I graduated from the University of Ilorin with B.Eng Electrical and Electronics with major in Computer and Controls. \n\nI spend my free time playing chess, video games or watching animes and i also do watch football matches on weekends.",
              "Temitope holds a B.Eng in Electrical and Electronics Engineering (Computer and Controls focus) from the University of Ilorin, where he graduated in 2023. He aspires to become a globally impactful engineer, building products that make life easier, smarter, and more connected across the world.",
              style: TextStyle(
                fontSize: screenHeight * 0.022,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.025,
            ),
            Center(
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade800, width: 2.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: CustomColor.greenPrimary,
                  ),
                  Text(
                    "Technologies I've worked with",
                    style: TextStyle(
                      color: CustomColor.greenPrimary,
                      fontSize: screenHeight * 0.04,
                    ),
                  ),
                  const Icon(
                    Icons.remove,
                    color: CustomColor.greenPrimary,
                  ),
                ],
              ),
            ),
            // Align(
            //   alignment: Alignment.center,
            //   child: CustomHeader(
            //     text: 'Technologies I have worked with',
            //     fontSize: screenHeight * 0.004,
            //   ),
            // ),
            const Skills(),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Center(
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade800, width: 2.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
          ],
        ));
  }
}
