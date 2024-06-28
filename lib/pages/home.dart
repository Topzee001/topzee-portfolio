import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
// import 'package:my_portfolio/widgets/logo.dart';

// import '../constants/Nav_items.dart';
// import '../styles/style.dart';
// import '../widgets/desk_appbar.dart';
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
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, Constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          drawer: Constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const MyDrawer(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //main
              if (Constraints.maxWidth >= kMinDesktopWidth)
                const MyDeskbar()
              else
                MymobileBar(
                  onMenuTap: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  onLogoTap: () {},
                ),

              // const MainDesktop(),
              Container(
                height: screenHeight,
                constraints: BoxConstraints(minHeight: 560.0),
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //avartar image
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(colors: [
                          CustomColor.scaffoldBg.withOpacity(0.8),
                          CustomColor.scaffoldBg.withOpacity(0.9),
                        ]).createShader(bounds);
                      },
                      child: Image.asset(
                        "assets/avatar.png",
                        width: screenWidth,
                      ),
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
                        const SizedBox(height: 10),
                        Text(
                          "Ibrahim Temitope",
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrmary,
                          ),
                        ),
                        const SizedBox(height: 10),
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
              ),
              //skills
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              //projects
              Container(
                height: 500,
                width: double.maxFinite,
                //color: Colors.blueGrey,
              ),
              //contacts
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              //footer
              Container(
                height: 500,
                width: double.maxFinite,
                // color: Colors.blueGrey,
              )
            ],
          ));
    });
  }
}
