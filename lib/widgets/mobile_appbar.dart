import 'package:flutter/material.dart';

import '../styles/style.dart';
import 'logo.dart';

class MymobileBar extends StatelessWidget {
  const MymobileBar({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kAppbarDecoration,
      height: 50,
      margin: const EdgeInsets.fromLTRB(20, 5, 40, 5),
      child: Row(
        children: [
          IconButton(
            onPressed: onMenuTap,
            icon: Icon(Icons.menu),
          ),
          SizedBox(width: 15),
          Spacer(),
          MyLogo(
            onTap: onLogoTap,
          ),
        ],
      ),
    );
  }
}
