// import 'package:flutter/material.dart';

// import '../constants/colors.dart';

// class MainDesktop extends StatelessWidget {
//   const MainDesktop({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // final screenSize = MediaQuery.of(context).size;
//     // final screenWidth = screenSize.width;
//     // final screenHeight = screenSize.height;

//     return LayoutBuilder(
//       builder: (context, constraints) {
//         return ConstrainedBox(
//           constraints: BoxConstraints(
//             minHeight: constraints.maxHeight * 0.8,
//             maxHeight: constraints.maxHeight,
//           ),
//           child: IntrinsicHeight(
//             child: Container(
//               margin: const EdgeInsets.symmetric(
//                 horizontal: 20.0,
//               ),
//               //height: constraints.maxHeight * 0.8,
//               constraints: const BoxConstraints(minHeight: 350.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Flexible(
//                     flex: 3,
//                     child: Container(
//                       constraints:
//                           BoxConstraints(maxWidth: constraints.maxWidth * 0.6),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         // crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Hi, my name is",
//                                 style: TextStyle(
//                                   height: 1.5,
//                                   fontSize: 30,
//                                   // fontWeight: FontWeight.bold,
//                                   color: CustomColor.whitePrmary,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               Text(
//                                 "Ibrahim Temitope",
//                                 style: TextStyle(
//                                   height: 1.5,
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold,
//                                   color: CustomColor.whitePrmary,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               Text(
//                                 "I'm a Mobile Developer",
//                                 style: TextStyle(
//                                   //height: 1.5,
//                                   fontSize: 20,
//                                   //fontWeight: FontWeight.bold,
//                                   color: CustomColor.whitePrmary,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               Flexible(
//                                 child: Text(
//                                   "With extensive experience in Mobile development, building apps\nthat follows the best practice to deliver over the top user\nexperience. Open to working on products that will eat the world",
//                                   style: TextStyle(
//                                       // height: 1.5,
//                                       fontSize: 15,
//                                       //fontWeight: FontWeight.bold,
//                                       color: CustomColor.whitePrmary),
//                                   textAlign: TextAlign.justify,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 15,
//                           ),
//                           SizedBox(
//                             width: 200,
//                             child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: CustomColor.greenPrimary,
//                               ),
//                               onPressed: () {},
//                               child: const Text("Hire me"),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Flexible(
//                     flex: 2,
//                     child: Container(
//                       constraints:
//                           BoxConstraints(maxWidth: constraints.maxWidth * 0.4),
//                       //fit: BoxFit.contain,
//                       // decoration: BoxDecoration(
//                       //     borderRadius: BorderRadius.circular(100),
//                       //     border: Border.all(
//                       //       color: Colors.red,
//                       //       width: 2,
//                       //     )),
//                       child: Image.asset(
//                         "assets/ibro.jpeg",
//                         // width: screenWidth / 2,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//       //child:
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 600, // Adjust this value as needed
            maxHeight: constraints.maxHeight,
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, my name is",
                        style: TextStyle(
                          height: 1.5,
                          fontSize: 30,
                          color: CustomColor.whitePrmary,
                        ),
                      ),
                      // ... (rest of the text widgets)
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 2,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      "assets/ibro.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
