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
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import '../constants/size.dart';
import '../widgets/desk_appbar.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/main_desktop.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
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
                      Container(
                        height: 500,
                        width: double.infinity,
                        color: Colors.blueGrey,
                        child: const Center(child: Text('Skills Section')),
                      ),
                      Container(
                        height: 500,
                        width: double.infinity,
                        child: const Center(child: Text('Projects Section')),
                      ),
                      Container(
                        height: 500,
                        width: double.infinity,
                        color: Colors.blueGrey,
                        child: const Center(child: Text('Contacts Section')),
                      ),
                      Container(
                        height: 500,
                        width: double.infinity,
                        child: const Center(child: Text('Footer Section')),
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
