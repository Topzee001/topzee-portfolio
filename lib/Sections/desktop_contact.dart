import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/Sections/portfolio/widgets/custom_testfield.dart';
import 'package:my_portfolio/components/size.dart';
import 'package:my_portfolio/components/sns_links.dart';
import 'package:my_portfolio/model/contact_model.dart';
import 'package:my_portfolio/provider/contact_provider.dart';
import 'dart:js' as js;
import '../components/colors.dart';

class DesktopContact extends ConsumerStatefulWidget {
  const DesktopContact({
    super.key,
  });

  @override
  ConsumerState<DesktopContact> createState() => _DesktopContactState();
}

class _DesktopContactState extends ConsumerState<DesktopContact> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
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
          // buildFieldDesktop(),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(
              builder: (context, constrainnts) {
                if (constrainnts.maxWidth >= kMinDesktopWidth) {
                  return buildFieldDesktop();
                }
                //else
                // return Container();
                return buildFieldMobile();
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: CustomTextfield(
              controller: messageController,
              hintText: "Your message",
              maxLine: 14,
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
                onPressed: _submitForm,
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
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.github]);
                  },
                  child: Image.asset('assets/github.png', width: 28)),
              InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.linkedin]);
                  },
                  child: Image.asset('assets/linkedin.png', width: 28)),
              // InkWell(
              //     onTap: () {
              //       // js.context.callMethod('open', [SnsLinks.github]);
              //     },
              //     child: Image.asset('assets/telegram.png', width: 28)),
              // InkWell(
              //     onTap: () {},
              //     child: Image.asset('assets/instagram.png', width: 28)),
              InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.twitter]);
                  },
                  child: Image.asset(
                    'assets/twitter2.png',
                    width: 28,
                    height: 25,
                    color: Colors.white,
                  )),
            ],
          )
        ],
      ),
    );
  }

  Row buildFieldDesktop() {
    return Row(
      children: [
        Flexible(
          child: CustomTextfield(
            controller: nameController,
            hintText: "Your name",
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Flexible(
          child: CustomTextfield(
            controller: emailController,
            hintText: "Your email",
          ),
        ),
      ],
    );
  }

  Column buildFieldMobile() {
    return Column(
      children: [
        Flexible(
          child: CustomTextfield(
            controller: nameController,
            hintText: "Your name",
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Flexible(
          child: CustomTextfield(
            controller: emailController,
            hintText: "Your email",
          ),
        ),
      ],
    );
  }

  void _submitForm() {
    final formState = ref.watch(contactFormProvider);
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final message = messageController.text.trim();

    if (name.isEmpty || email.isEmpty || message.isEmpty) {
      // Show an error message or handle the error
      return;
    }
    final contact = ContactModel(
      name: nameController.text,
      email: emailController.text,
      message: messageController.text,
    );

    ref.watch(contactFormProvider.notifier).sendMessage(contact.toJson());
    // Create a contact model instance
    // ContactModel contact = ContactModel(
    //   name: name,
    //   email: email,
    //   message: message,
    // );

    // Send the contact data to the server or perform any other action
  }
}
