import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/components/sns_links.dart';

import '../../components/colors.dart';
import 'dart:math' as math;
import 'dart:js' as js;

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
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Transform.flip(
                  //   flipX: true,
                  // angle: 0 * pi / 180,
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Image.asset(
                      'assets/hi.gif',
                      height: screenHeight * 0.03,
                    ),
                  ),
                  const SizedBox(width: 10),
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
                ],
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
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
              SizedBox(
                height: screenHeight * 0.03,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.phone_android,
                      color: CustomColor.greenPrimary,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Mobile Developer',
                          textStyle: TextStyle(
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w500,
                          ),
                          speed: const Duration(milliseconds: 50),
                        ),
                      ],
                      // totalRepeatCount: 4,
                      isRepeatingAnimation: true,
                      pause: const Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
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
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.github]);
                  },
                  child: Image.asset('assets/github.png', width: 28)),
              InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.linkedin]);
                  },
                  child: Image.asset('assets/linkedin.png', width: 28)),
              // InkWell(
              //     onTap: () {
              //       // js.context.callMethod('open', [SnsLinks.github]);
              //     },
              //     child: Image.asset('assets/telegram.png', width: 28)),
              // InkWell(
              //     onTap: () {},
              //     child: Image.asset('assets/instagram.png', width: 28)),
              InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.twitter]);
                  },
                  child: Image.asset(
                    'assets/twitter2.png',
                    width: 28,
                    height: 25,
                    color: Colors.white,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
