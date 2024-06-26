import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/colors.dart';
// import 'package:my_portfolio/widgets/logo.dart';

// import '../constants/Nav_items.dart';
// import '../styles/style.dart';
// import '../widgets/desk_appbar.dart';
import '../widgets/mobile_appbar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        body: ListView(
          children: [
            //main
            //const MyDeskbar(),
            MymobileBar(
              onMenuTap: () {},
              onLogoTap: () {},
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
  }
}
