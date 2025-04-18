// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:my_portfolio/Sections/portfolio/widgets/custom_testfield.dart';
// import 'package:my_portfolio/components/size.dart';
// import 'package:my_portfolio/components/sns_links.dart';
// import 'package:my_portfolio/model/contact_model.dart';
// import 'package:my_portfolio/provider/contact_provider.dart';
// import 'dart:js' as js;
// import '../components/colors.dart';

// class DesktopContact extends ConsumerStatefulWidget {
//   const DesktopContact({
//     super.key,
//   });

//   @override
//   ConsumerState<DesktopContact> createState() => _DesktopContactState();
// }

// class _DesktopContactState extends ConsumerState<DesktopContact> {
//   final formKey = GlobalKey<FormState>();
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController messageController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     // double screenWidth = MediaQuery.of(context).size.width;
//     return Form(
//       key: formKey,
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
//         color: CustomColor.bgLight1,
//         child: Column(
//           children: [
//             const Text(
//               'Get in touch',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 24,
//                 color: CustomColor.whitePrmary,
//               ),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             // buildFieldDesktop(),
//             ConstrainedBox(
//               constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
//               child: LayoutBuilder(
//                 builder: (context, constrainnts) {
//                   if (constrainnts.maxWidth >= kMinDesktopWidth) {
//                     return buildFieldDesktop();
//                   }
//                   //else
//                   // return Container();
//                   return buildFieldMobile();
//                 },
//               ),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             // ConstrainedBox(
//             //   constraints: const BoxConstraints(
//             //     maxWidth: 700,
//             //   ),
//             //   child: CustomTextfield(
//             //       controller: messageController,
//             //       hintText: "Enter message",
//             //       maxLine: 14,
//             //       validator: (value) {
//             //         if (value == null || value.trim().isEmpty) {
//             //           return 'Please enter your message';
//             //         }
//             //         return null;
//             //       }),
//             // ),
//             CustomTextfield(
//                 controller: messageController,
//                 hintText: "Enter message",
//                 maxLine: 14,
//                 validator: (value) {
//                   if (value == null || value.trim().isEmpty) {
//                     return 'Please enter your message';
//                   }
//                   return null;
//                 }),
//             //send button
//             const SizedBox(
//               height: 20,
//             ),
//             ConstrainedBox(
//               constraints: const BoxConstraints(
//                 maxWidth: 700,
//               ),
//               child: SizedBox(
//                 width: double.maxFinite,
//                 child: ElevatedButton(
//                   onPressed: _submitForm,
//                   child: const Text('Get in touch'),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             ConstrainedBox(
//               constraints: const BoxConstraints(
//                 maxWidth: 300,
//               ),
//               child: const Divider(),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             //SNS Icon button links
//             Wrap(
//               spacing: 12,
//               runSpacing: 12,
//               alignment: WrapAlignment.center,
//               children: [
//                 InkWell(
//                     onTap: () {
//                       js.context.callMethod('open', [SnsLinks.github]);
//                     },
//                     child: Image.asset('assets/github.png', width: 28)),
//                 InkWell(
//                     onTap: () {
//                       js.context.callMethod('open', [SnsLinks.linkedin]);
//                     },
//                     child: Image.asset('assets/linkedin.png', width: 28)),
//                 // InkWell(
//                 //     onTap: () {
//                 //       // js.context.callMethod('open', [SnsLinks.github]);
//                 //     },
//                 //     child: Image.asset('assets/telegram.png', width: 28)),
//                 // InkWell(
//                 //     onTap: () {},
//                 //     child: Image.asset('assets/instagram.png', width: 28)),
//                 InkWell(
//                     onTap: () {
//                       js.context.callMethod('open', [SnsLinks.twitter]);
//                     },
//                     child: Image.asset(
//                       'assets/twitter2.png',
//                       width: 28,
//                       height: 25,
//                       color: Colors.white,
//                     )),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Row buildFieldDesktop() {
//     return Row(
//       children: [
//         Expanded(
//           flex: 1,
//           child: CustomTextfield(
//               controller: nameController,
//               hintText: "Enter your name",
//               validator: (value) {
//                 if (value == null || value.trim().isEmpty) {
//                   return 'Please enter your name';
//                 }
//                 return null;
//               }),
//         ),
//         const SizedBox(
//           width: 15,
//         ),
//         Expanded(
//           flex: 1,
//           child: CustomTextfield(
//               controller: emailController,
//               hintText: "Enter your email",
//               validator: (value) {
//                 if (value == null || value.trim().isEmpty) {
//                   return 'Please enter your email';
//                 } else if (!isValidEmail(value.trim())) {
//                   return 'Please enter a valid email';
//                 }
//                 return null;
//               }),
//         ),
//       ],
//     );
//   }

//   Column buildFieldMobile() {
//     return Column(
//       children: [
//         CustomTextfield(
//             controller: nameController,
//             hintText: "Enter your name",
//             validator: (value) {
//               if (value == null || value.trim().isEmpty) {
//                 return 'Please enter your name';
//               }
//               return null;
//             }),
//         const SizedBox(
//           height: 15,
//         ),
//         CustomTextField1(
//           controller: emailController,
//           hintText: "Enter your email",
//           obscureText: false,
//           // validator: (value) {
//           //   if (value == null || value.trim().isEmpty) {
//           //     return 'Please enter your email';
//           //   } else if (!isValidEmail(value.trim())) {
//           //     return 'Please enter a valid email';
//           //   }
//           //   return null;
//           // },
//         ),
//       ],
//     );
//   }

//   void _submitForm() async {
//     final name = nameController.text.trim();
//     final email = emailController.text.trim();
//     final message = messageController.text.trim();
//     if (!formKey.currentState!.validate()) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Please fill all fields')),
//       );
//       return;
//     }

//     // if (name.isEmpty || email.isEmpty || message.isEmpty) {
//     //   ScaffoldMessenger.of(context).showSnackBar(
//     //     const SnackBar(content: Text('Please fill all fields')),
//     //   );
//     //   return;
//     // }
//     final contact = ContactModel(
//       name: name,
//       email: email,
//       message: message,
//     );

//     await ref.watch(contactFormProvider.notifier).sendMessage(contact.toJson());

//     final result = ref.watch(contactFormProvider);
//     if (result is AsyncData && result.value == true) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//             content:
//                 Text('Message sent successfully, thank you for reaching out')),
//       );
//     } else if (result is AsyncError) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(result.error.toString())),
//       );
//     }

//     _reset();
//   }

//   void _reset() {
//     nameController.clear();
//     emailController.clear();
//     messageController.clear();
//   }

//   bool isValidEmail(String value) {
//     final emailRegex = RegExp(
//       r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
//     );
//     return emailRegex.hasMatch(value);
//   }
// }

// TODO: new UI

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/components/size.dart';
import 'package:my_portfolio/components/sns_links.dart';
import 'package:my_portfolio/model/contact_model.dart';
import 'package:my_portfolio/provider/contact_provider.dart';
import 'dart:js' as js;
import '../components/colors.dart';

class ContactSection extends ConsumerStatefulWidget {
  const ContactSection({super.key});

  @override
  ConsumerState<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends ConsumerState<ContactSection> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= kMinDesktopWidth;

    return Form(
      key: formKey,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(
          25,
          20,
          25,
          isDesktop ? 60 : 40,
        ),
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
            const SizedBox(height: 50),

            // Name and Email fields
            if (isDesktop) _buildDesktopFields() else _buildMobileFields(),

            const SizedBox(height: 15),

            // Message field
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: TextFormField(
                controller: messageController,
                decoration: InputDecoration(
                  hintText: "Enter message",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.all(16),
                ),
                maxLines: 14,
                minLines: 6,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your message';
                  }
                  return null;
                },
              ),
            ),

            // Send button
            const SizedBox(height: 20),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: _submitForm,
                  child: const Text('Get in touch'),
                ),
              ),
            ),

            const SizedBox(height: 30),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: const Divider(color: Colors.white54),
            ),
            const SizedBox(height: 15),

            // SNS Icon button links
            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: [
                _buildSocialIcon('assets/github.png', SnsLinks.github),
                _buildSocialIcon('assets/linkedin.png', SnsLinks.linkedin),
                _buildSocialIcon(
                  'assets/twitter2.png',
                  SnsLinks.twitter,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialIcon(String asset, String link, {Color? color}) {
    return InkWell(
      onTap: () => js.context.callMethod('open', [link]),
      child: Image.asset(
        asset,
        width: 28,
        color: color,
      ),
    );
  }

  Widget _buildDesktopFields() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 700),
      child: Row(
        children: [
          Expanded(
            child: _buildNameField(),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: _buildEmailField(),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileFields() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 700),
      child: Column(
        children: [
          _buildNameField(),
          const SizedBox(height: 15),
          _buildEmailField(),
        ],
      ),
    );
  }

  TextFormField _buildNameField() {
    return TextFormField(
      controller: nameController,
      decoration: InputDecoration(
        hintText: "Enter your name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(16),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Please enter your name';
        }
        return null;
      },
    );
  }

  TextFormField _buildEmailField() {
    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(
        hintText: "Enter your email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(16),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Please enter your email';
        } else if (!isValidEmail(value.trim())) {
          return 'Please enter a valid email';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
    );
  }

  void _submitForm() async {
    if (!formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all fields correctly')),
      );
      return;
    }

    final contact = ContactModel(
      name: nameController.text.trim(),
      email: emailController.text.trim(),
      message: messageController.text.trim(),
    );

    await ref.watch(contactFormProvider.notifier).sendMessage(contact.toJson());

    final result = ref.watch(contactFormProvider);
    if (result is AsyncData && result.value == true) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content:
              Text('Message sent successfully, thank you for reaching out'),
        ),
      );
    } else if (result is AsyncError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(result.error.toString())),
      );
    }

    _reset();
  }

  void _reset() {
    nameController.clear();
    emailController.clear();
    messageController.clear();
  }

  bool isValidEmail(String value) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(value);
  }
}
