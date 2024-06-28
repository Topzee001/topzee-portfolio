import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, my name is",
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 30,
                      // fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrmary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Ibrahim Temitope",
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrmary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "I'm a Mobile Developer",
                    style: TextStyle(
                      //height: 1.5,
                      fontSize: 20,
                      //fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrmary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "With extensive experience in Mobile development, building apps\nthat follows the best practice to deliver over the top user\nexperience. Open to working on products that will eat the world",
                    style: TextStyle(
                      // height: 1.5,
                      fontSize: 15,
                      //fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrmary,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
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
                  onPressed: () {},
                  child: Text("Hire me"),
                ),
              )
            ],
          ),
          Image.asset(
            "assets/avatar.png",
            width: screenWidth / 2,
          )
        ],
      ),
    );
  }
}
