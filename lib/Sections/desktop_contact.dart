import 'package:flutter/material.dart';
import 'package:my_portfolio/Sections/portfolio/widgets/custom_testfield.dart';
import 'package:my_portfolio/components/size.dart';

import '../components/colors.dart';

class DesktopContact extends StatelessWidget {
  const DesktopContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          const Text(
            'Get in touch',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrmary,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(builder: (context, constrainnts) {
              if (constrainnts.maxHeight >= kMinDesktopWidth) {
                return buildFieldDesktop();
              }
              //else
              return buildFieldMobile();
            }),
          ),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: const CustomTextfield(
              // controller: ,
              hintText: "Your message",
              maxLine: 20,
            ),
          ),
          //send button
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Get in touch'),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(
            height: 15,
          ),
          //SNS Icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                  onTap: () {},
                  child: Image.asset('assets/github.png', width: 28)),
              InkWell(
                  onTap: () {},
                  child: Image.asset('assets/linkedin.png', width: 28)),
              InkWell(
                  onTap: () {},
                  child: Image.asset('assets/telegram.png', width: 28)),
              InkWell(
                  onTap: () {},
                  child: Image.asset('assets/instagram.png', width: 28)),
              // InkWell(
              //     onTap: () {},
              //     child: Image.asset(
              //       'assets/twitter.png',
              //       width: 28,
              //       height: 25,
              //     )),
            ],
          )
        ],
      ),
    );
  }
}

Row buildFieldDesktop() {
  return const Row(
    children: [
      Flexible(
        child: CustomTextfield(
          // controller: ,
          hintText: "Your name",
        ),
      ),
      SizedBox(
        width: 15,
      ),
      Flexible(
        child: CustomTextfield(
          // controller: ,
          hintText: "Your email",
        ),
      ),
    ],
  );
}

Column buildFieldMobile() {
  return const Column(
    children: [
      Flexible(
        child: CustomTextfield(
          // controller: ,
          hintText: "Your name",
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Flexible(
        child: CustomTextfield(
          // controller: ,
          hintText: "Your email",
        ),
      ),
    ],
  );
}
