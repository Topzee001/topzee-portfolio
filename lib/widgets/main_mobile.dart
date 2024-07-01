import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560.0),
      child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //avartar image
          // ShaderMask(
          //   shaderCallback: (bounds) {
          //     return LinearGradient(colors: [
          //       CustomColor.scaffoldBg.withOpacity(0.8),
          //       CustomColor.scaffoldBg.withOpacity(0.9),
          //     ]).createShader(bounds);
          //   },
          //   child: Image.asset(
          //     "assets/avatar.png",
          //     width: screenWidth,
          //   ),
          // ),
          Image.asset(
            "assets/avatar.png",
            width: screenWidth,
          ),
          //texts
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, my name is",
                style: TextStyle(
                  height: 1.5,
                  fontSize: 24,
                  // fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrmary,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Ibrahim Temitope",
                style: TextStyle(
                  height: 1.5,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrmary,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.phone_android),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Mobile Developer",
                    style: TextStyle(
                      //height: 1.5,
                      fontSize: 18,
                      //fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrmary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "With extensive experience in Mobile development, building apps that follows the best practice to deliver over the top user experience. Open to working on products that will eat the world",
                style: TextStyle(
                  // height: 1.5,
                  fontSize: 15,
                  //fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrmary,
                ),
                //textAlign: TextAlign.justify,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
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
    );
  }
}
