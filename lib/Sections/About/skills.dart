import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/colors.dart';
import '../../components/components.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

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
    return ConstrainedBox(
      constraints: const BoxConstraints(
          // maxWidth: 500,
          ),
      child: Center(
        child: Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          children: [
            for (int i = 0; i < technologies.length; i++)
              Chip(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                label: Text(
                  technologies[i]["title"],
                  style: TextStyle(
                    fontSize: screenWidth < 1230
                        ? screenWidth * 0.02
                        : screenWidth * 0.015,
                  ),
                ),
                avatar: getImage(technologies[i]["img"]),
                backgroundColor: CustomColor.bgLight2,
              )
          ],
        ),
      ),
    );
  }
}
