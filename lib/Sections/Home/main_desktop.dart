
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/components/sns_links.dart';
import '../../components/colors.dart';
import '../../components/tooltech.dart';
import 'dart:js' as js;

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: screenHeight - 50,
            maxHeight: constraints.maxHeight,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              // horizontal: 20.0,
              horizontal: screenWidth * 0.06,
              vertical: 40.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Transform.flip(
                            flipX: true,
                            // angle: 0 * pi / 180,
                            child: Image.asset(
                              'assets/hi.gif',
                              height: screenHeight * 0.05,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Hi, my name is",
                            style: TextStyle(
                              height: 1.5,
                              fontSize: screenHeight * 0.03,
                              fontWeight: FontWeight.w300,
                              color: CustomColor.whitePrmary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.04,
                      ),
                      Text(
                        "Ibrahim Temitope",
                        style: TextStyle(
                          height: 1.5,
                          fontSize: screenWidth < 1200
                              ? screenWidth * 0.035
                              : screenWidth * 0.04,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 5.0,
                          color: CustomColor.whitePrmary,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.035,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.phone_android,
                            color: CustomColor.greenPrimary,
                            // #45B39D
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          // Text(
                          //   "I'm a Mobile Developer",
                          //   style: TextStyle(
                          //     //height: 1.5,
                          //     fontSize: screenWidth * 0.018,
                          //     fontWeight: FontWeight.w500,
                          //     color: CustomColor.whitePrmary,
                          //   ),
                          // ),
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                "I'm a Mobile Developer",
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.018,
                                  fontWeight: FontWeight.w500,
                                ),
                                speed: const Duration(milliseconds: 50),
                              ),
                            ],
                            totalRepeatCount: 10,
                            isRepeatingAnimation: true,
                            pause: const Duration(milliseconds: 1000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          )
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      Text(
                        "With extensive experience in Mobile development, building apps that follows the best practice to deliver over the top user experience. Open to working on products that will eat the world",
                        style: TextStyle(
                            // height: 1.5,
                            fontSize: screenWidth < 1300
                                ? screenWidth * 0.018
                                : screenWidth * 0.016,
                            fontWeight: FontWeight.w300,
                            color: CustomColor.whitePrmary),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColor.greenPrimary,
                          ),
                          onPressed: () async {
                            await launchUrlString(
                                "mailto:ibrahimsakariyaha@gmail.com");
                          },
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
                                js.context
                                    .callMethod('open', [SnsLinks.github]);
                              },
                              child:
                                  Image.asset('assets/github.png', width: 28)),
                          InkWell(
                              onTap: () {
                                js.context
                                    .callMethod('open', [SnsLinks.linkedin]);
                              },
                              child: Image.asset('assets/linkedin.png',
                                  width: 28)),
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
                                js.context
                                    .callMethod('open', [SnsLinks.twitter]);
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
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 2,
                  child: AspectRatio(
                      aspectRatio: 1,
                      child: CircleAvatar(
                        backgroundColor: CustomColor.scaffoldBg,
                        radius: (screenWidth / screenHeight) < 1.3
                            ? screenWidth * 0.15
                            : screenHeight * 0.2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            (screenWidth / screenHeight) < 1.3
                                ? screenWidth * 0.15
                                : screenHeight * 0.2,
                          ),
                          child: Image.asset(
                            "assets/emote.jpeg",
                            //fit: BoxFit.cover,
                            height: (screenWidth / screenHeight) < 1.3
                                ? screenWidth * 0.3
                                : screenHeight * 0.4,
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
