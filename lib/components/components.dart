import 'package:flutter/material.dart';

import 'tooltech.dart';

const List<Map> technologies = [
  {'title': 'flutter', 'img': 'assets/flutter.png'},
  {'title': 'Dart', 'img': 'assets/dart.png'},
  {'title': 'Firebase', 'img': 'assets/firebase.svg'},
  {'title': 'Git', 'img': 'assets/github.png'},
  //{'title': 'C++', 'img': 'assets/android_icon.png'},
  {'title': 'Figma', 'img': 'assets/figma.svg'},
  {'title': 'Android Dev', 'img': 'assets/android_icon.png'},
];

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.remove),
        Text(
          text.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 1.0,
          ),
        ),
        const Icon(Icons.remove),
      ],
    );
  }
}

class CustomSubheader extends StatelessWidget {
  const CustomSubheader({super.key, required this.text, this.fontSize});
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: fontSize ?? MediaQuery.of(context).size.height * 0.04,
          ),
        ),
      ],
    );
  }
}

class SocialMediaIconBtn extends StatelessWidget {
  final String icon;
  final String socialLink;
  final double? height;
  final double horizontalPadding;

  const SocialMediaIconBtn(
      {super.key,
      required this.icon,
      required this.socialLink,
      this.height,
      required this.horizontalPadding});
  @override
  Widget build(BuildContext context) {
    // final _themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: IconButton(
        icon: Image.network(
          icon,
          //  color: _themeProvider.lightTheme ? Colors.black : Colors.white,
        ),
        iconSize: height,
        onPressed: () => launchUrlString(socialLink),
        // hoverColor:
        //_themeProvider.lightTheme ? kPrimaryLightColor : kPrimaryColor,
      ),
    );
  }
}
