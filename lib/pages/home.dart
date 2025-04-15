import 'package:flutter/material.dart';
import 'package:my_portfolio/Sections/footer/footer.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/components/colors.dart';
import 'package:my_portfolio/Sections/Home/main_mobile.dart';
import 'package:my_portfolio/components/sns_links.dart';
import '../Sections/About/about_mobile.dart';
import '../Sections/About/about_desktop.dart';
// import '../Sections/portfolio/protfolio_desktop.dart';
import '../Sections/desktop_contact.dart';
import '../Sections/portfolio/portfolio_mobile.dart';
import '../Sections/portfolio/protfolio_desktop.dart';
import '../components/size.dart';
import '../widgets/desk_appbar.dart';
import '../widgets/drawer_mobile.dart';
import '../Sections/Home/main_desktop.dart';
import '../widgets/mobile_appbar.dart';
import 'dart:js' as js;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        //  final isNarrow = constraints.maxWidth < 1230;
        final isDesktop = constraints.maxWidth >= kMinDesktopWidth;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          drawer: isDesktop
              ? null
              : MyDrawer(
                  onNavItemTap: (int navIndex) {
                    // call function
                    scaffoldKey.currentState?.closeDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          body: Column(
            children: [
              // SizedBox(key: navbarKeys.first),
              if (isDesktop)
                MyDeskbar(onNavMenuTap: (int navIndex) {
                  //call fxn for jump
                  scrollToSection(navIndex);
                })
              else
                MymobileBar(
                  onMenuTap: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  onLogoTap: () {},
                ),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  scrollDirection: Axis.vertical,
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      // SizedBox(key: navbarKeys.first),
                      //home
                      if (isDesktop)
                        MainDesktop(key: navbarKeys.first)
                      else
                        MainMobile(key: navbarKeys[0]),

                      //about section
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        AboutDesktop(key: navbarKeys[1])
                      else
                        AboutMobile(key: navbarKeys[1]),

                      //projects
                      isDesktop
                          ? ProtfolioDesktop(key: navbarKeys[2])
                          :
                          // else
                          ProtfolioMobile(key: navbarKeys[2]),

                      // const PortfolioDesk(),

                      //contacts
                      DesktopContact(key: navbarKeys[3]),
                      //footer
                      const Footer(),
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

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      //open resume page
      js.context.callMethod('open', [SnsLinks.resume]);
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
