import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/components/colors.dart';
import 'package:my_portfolio/components/tooltech.dart';

// import 'package:url_launcher/url_launcher.dart';

import '../../widgets/adaptive_text.dart';

class ProjectCard extends StatefulWidget {
  final String projectIcon;
  final IconData? projectIconData;
  final String projectTitle;
  final String projectDescription;
  final String projectLink;
  final double cardWidth;
  final double cardHeight;
  final String backImage;
  final Widget? bottomWidget;

  const ProjectCard(
      {super.key,
      required this.backImage,
      this.bottomWidget,
      required this.projectIcon,
      required this.projectTitle,
      required this.projectDescription,
      required this.projectLink,
      this.projectIconData,
      required this.cardWidth,
      required this.cardHeight});
  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    // final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => launchUrlString(widget.projectLink),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
          // color: _themeProvider.lightTheme ? Colors.white : Colors.grey[900],
          border: Border(
            bottom: isHover
                ? const BorderSide(
                    color: kPrimaryColor,
                    width: 3.0,
                  )
                : BorderSide(
                    color: Colors.grey.shade900,
                  ),
          ),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: kPrimaryColor.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // widget.projectIcon != null
                //     ?
                if (width > 1135 || width < 950)
                  //?
                  Image.asset(
                    widget.projectIcon,
                    height: height * 0.05,
                  )
                //:
                else
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        widget.projectIcon,
                        height: height * 0.03,
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        widget.projectTitle,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.015,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          // _themeProvider.lightTheme
                          //     ? Colors.black
                          //     : Colors.white,
                        ),
                      ),
                    ],
                  ),
                // : Container(),
                // widget.projectIconData != null
                //     ?
                Icon(
                  widget.projectIconData,
                  color: kPrimaryColor,
                  // _themeProvider.lightTheme
                  //     ? kPrimaryLightColor
                  //     : kPrimaryColor,
                  size: height * 0.1,
                ),
                // :
                //Container(),
                (width > 1135 || width < 950)
                    ? SizedBox(
                        height: height * 0.02,
                      )
                    : const SizedBox(),
                (width > 1135 || width < 950)
                    ? AdaptiveText(
                        widget.projectTitle,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.02,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[900],
                          // _themeProvider.lightTheme
                          //     ? Colors.white
                          //     : Colors.grey[900],
                        ),
                      )
                    : Container(),
                SizedBox(
                  height: height * 0.01,
                ),
                AdaptiveText(
                  widget.projectDescription,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.015,
                      letterSpacing: 2.0,
                      color: Colors.white,
                      // _themeProvider.lightTheme
                      //     ? Colors.black
                      //     : Colors.white,
                      fontWeight: FontWeight.w300,
                      height: width >= 600 ? 2.0 : 1.2),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                if (widget.bottomWidget != null) widget.bottomWidget!,
                // widget.bottomWidget
                //?? Container(),
              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: FittedBox(
                  fit: BoxFit.fill, child: Image.asset(widget.backImage)
                  // widget.backImage != null
                  //?
                  //  Image.asset(widget.backImage)
                  //: Container(),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
