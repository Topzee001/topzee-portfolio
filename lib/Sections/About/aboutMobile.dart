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
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05,
        ),
        child: Column(
          children: [
            const CustomHeader(
              text: 'About',
            ),
            const CustomSubheader(
              text: 'Get to know me',
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Text(
                "Hi! My name is Ibrahim, popularly called Topzee, but you can call me Temitope. I'm a senior mobile developer with over 1+ years of IT experience. I have worked on several mobile solutions ranging from ISP Company App, restaurant NFC technology solution, to e-commerce and beyond.",
                style: TextStyle(
                  fontSize: screenHeight * 0.02,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text(
              "Currently, I am the lead Mobile Developer at Estream Networks. I specialize in front-end development and make it my mission to translate user-focused designs into pixel-perfect applications. i'm always passionate about creating, learning, exploring which helps to contribute to my skill and focus on growth.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: screenHeight * 0.02,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text(
              "In 2023, I graduated from the University of Ilorin with B.Eng Electrical and Electronics with major in Computer and Controls. \n\nI spend my free time playing chess, video games or watching animes and i also do watch football matches on weekends.",
              style: TextStyle(
                fontSize: screenHeight * 0.02,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.015,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade900, width: 2.0),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Technologies I've worked with",
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                ),
              ),
            ),
            const Skills(),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade900, width: 2.0),
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
