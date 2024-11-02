// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
// //import 'package:google_fonts/google_fonts.dart';
// import 'package:my_portfolio/constants/colors.dart';
// //import 'package:my_portfolio/constants/nav_items.dart';
// import 'package:my_portfolio/widgets/main_mobile.dart';
// // import 'package:my_portfolio/widgets/logo.dart';

// // import '../constants/Nav_items.dart';
// // import '../styles/style.dart';
// // import '../widgets/desk_appbar.dart';
// import '../constants/size.dart';
// import '../widgets/desk_appbar.dart';
// import '../widgets/drawer_mobile.dart';
// import '../widgets/main_desktop.dart';
// import '../widgets/mobile_appbar.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     // final screenSize = MediaQuery.of(context).size;
//     // final screenWidth = screenSize.width;
//     // final screenHeight = screenSize.height;

//     return LayoutBuilder(builder: (context, Constraints) {
//       return Scaffold(
//           key: scaffoldKey,
//           backgroundColor: CustomColor.scaffoldBg,
//           drawer: Constraints.maxWidth >= kMinDesktopWidth
//               ? null
//               : const MyDrawer(),
//           body: ListView(
//             scrollDirection: Axis.vertical,
//             children: [
//               //main
//               if (Constraints.maxWidth >= kMinDesktopWidth)
//                 const MyDeskbar()
//               else
//                 MymobileBar(
//                   onMenuTap: () {
//                     scaffoldKey.currentState?.openDrawer();
//                   },
//                   onLogoTap: () {},
//                 ),
//               if (Constraints.maxWidth >= kMinDesktopWidth)
//                 const MainDesktop()
//               else
//                 const MainMobile(),

//               //skills
//               Container(
//                 height: 500,
//                 width: double.maxFinite,
//                 color: Colors.blueGrey,
//               ),
//               //projects
//               Container(
//                 height: 500,
//                 width: double.maxFinite,
//                 //color: Colors.blueGrey,
//               ),
//               //contacts
//               Container(
//                 height: 500,
//                 width: double.maxFinite,
//                 color: Colors.blueGrey,
//               ),
//               //footer
//               Container(
//                 height: 500,
//                 width: double.maxFinite,
//                 // color: Colors.blueGrey,
//               )
//             ],
//           ));
//     });
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/Sections/portfolio/model.dart';
import 'package:my_portfolio/components/components.dart';
import 'package:my_portfolio/components/colors.dart';
import 'package:my_portfolio/Sections/Home/main_mobile.dart';
import '../Sections/About/aboutMobile.dart';
import '../Sections/About/about_desktop.dart';
import '../Sections/portfolio/protfolio_desktop.dart';
import '../components/size.dart';
import '../widgets/desk_appbar.dart';
import '../widgets/drawer_mobile.dart';
import '../Sections/Home/main_desktop.dart';
import '../widgets/mobile_appbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(
      builder: (context, constraints) {
        final isNarrow = constraints.maxWidth < 1230;
        final isDesktop = constraints.maxWidth >= kMinDesktopWidth;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          drawer: isDesktop ? null : const MyDrawer(),
          body: Column(
            children: [
              if (isDesktop)
                const MyDeskbar()
              else
                MymobileBar(
                  onMenuTap: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  onLogoTap: () {},
                ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (isDesktop)
                        const MainDesktop()
                      else
                        const MainMobile(),
                      //about section
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        const AboutDesktop()
                      else
                        const AboutMobile(),
                      //projects
                      //const ProtfolioDesktop(),
                      SizedBox(
                        // height: 500,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.06,
                                  vertical: screenHeight * 0.02),
                              child: const Column(
                                children: [
                                  CustomHeader(text: "Portfolio"),
                                  CustomSubheader(
                                    text:
                                        'Few of my previous projects are below\n\n',
                                    // fontSize: screenWidth < 1230
                                    //     ? screenWidth * 0.015
                                    //     : screenWidth * 0.04,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenWidth > 1200
                                  ? screenHeight * 0.45
                                  : screenWidth * 0.21,
                              child: ListView.separated(
                                itemBuilder: (context, index) {
                                  return;
                                },
                                separatorBuilder: (context, index) {
                                  return VerticalDivider(
                                    color: Colors.transparent,
                                    width: screenWidth * 0.015,
                                  );
                                },
                                itemCount: personalProjectUtils.length,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   // height: 500,
                      //   width: double.infinity,
                      //   child: Column(
                      //     children: [
                      //       SizedBox(
                      //         height: screenHeight * 0.02,
                      //       ),
                      //       Text(
                      //         "Projects",
                      //         style: TextStyle(
                      //           fontSize: screenWidth < 1230
                      //               ? screenWidth * 0.02
                      //               : screenWidth * 0.015,
                      //         ),
                      //       ),
                      //     ],
                      //   ),

                      // ),
                      //contacts
                      Container(
                        height: 500,
                        width: double.infinity,
                        color: CustomColor.bgLight1,
                        child: const Center(child: Text('Contacts Section')),
                      ),
                      //footer
                      const SizedBox(
                        height: 500,
                        width: double.infinity,
                        child: Center(child: Text('Footer Section')),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
