import 'package:flutter/material.dart';
import '../../components/colors.dart';
import '../../components/tooltech.dart';

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
            minHeight: 600, // Adjust this value as needed
            maxHeight: constraints.maxHeight,
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, my name is",
                        style: TextStyle(
                          height: 1.5,
                          fontSize: screenHeight * 0.03,
                          fontWeight: FontWeight.w300,
                          color: CustomColor.whitePrmary,
                        ),
                      ),
                      const SizedBox(height: 10),
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
                      const SizedBox(height: 10),
                      Text(
                        "I'm a Mobile Developer",
                        style: TextStyle(
                          //height: 1.5,
                          fontSize: screenWidth * 0.018,
                          fontWeight: FontWeight.w500,
                          color: CustomColor.whitePrmary,
                        ),
                      ),
                      const SizedBox(height: 10),
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
                      const SizedBox(
                        height: 15,
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
