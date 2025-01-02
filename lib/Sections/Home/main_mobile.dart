import 'package:flutter/material.dart';

import '../../components/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: screenHeight * 0.15,
            backgroundColor:
                // Colors.red,
                CustomColor.scaffoldBg,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(screenHeight * 0.15),
              child: Image.asset(
                "assets/emote.jpeg",
                fit: BoxFit.cover,
                height:
                    screenWidth < 700 ? screenHeight * 0.3 : screenHeight * 0.3,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hi, my name is",
                style: TextStyle(
                  height: 1.5,
                  //fontSize: 24,
                  fontSize: screenHeight * 0.025,
                  fontWeight: FontWeight.w400,
                  color: CustomColor.whitePrmary,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Ibrahim Temitope",
                style: TextStyle(
                  height: 1.5,
                  fontSize: screenWidth * 0.055,
                  //fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.whitePrmary,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.phone_android),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Mobile Developer",
                    style: TextStyle(
                      //height: 1.5,
                      fontSize: screenHeight * 0.03,
                      // fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.whitePrmary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                "With extensive experience in Mobile development, building apps that follows the best practice to deliver over the top user experience. Open to working on products that will eat the world",
                textAlign: TextAlign.center,
                style: TextStyle(
                  // height: 1.5,
                  fontSize: screenHeight * 0.02,
                  fontWeight: FontWeight.w400,
                  color: CustomColor.whitePrmary,
                ),
                //textAlign: TextAlign.justify,
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.035,
          ),
          SizedBox(
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.greenPrimary,
              ),
              onPressed: () {},
              child: const Text("Hire me"),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.035,
          ),
          // Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     for (int i = 0; i < kSocialIcons.length; i++)
          //       SocialMediaIconBtn(
          //         icon: kSocialIcons[i],
          //         socialLink: kSocialLinks[i],
          //         height: screenHeight * 0.03,
          //         horizontalPadding: 10.0,
          //       )
          //   ],
          // )
        ],
      ),
    );
  }
}
