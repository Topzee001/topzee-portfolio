import 'package:flutter/material.dart';
import 'package:my_portfolio/Sections/portfolio/model.dart';

import '../../../components/colors.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
  });

  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 310,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //project image
          Image.asset(
            // 'assets/projects/shoes.png',
            project.image,
            height: 140,
            width: 280,
            fit: BoxFit.cover,
          ),
          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 5),
            child: Text(
              // 'Title',
              project.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: CustomColor.whitePrmary),
            ),
          ),
          //subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              // 'Some dummy subtitle about my project',
              style: const TextStyle(
                  // fontWeight: FontWeight.w600,
                  fontSize: 10,
                  color: CustomColor.whiteSecondary),
            ),
          ),
          const Spacer(),
          //footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Row(
              children: [
                Text(
                  'Available on',
                  style: TextStyle(
                    color: yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                if (project.githubLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.githubLink]);
                      },
                      child: Image.asset(
                        'assets/github.png',
                        width: 20,
                      ),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
