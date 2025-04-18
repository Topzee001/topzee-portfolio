import 'package:flutter/material.dart';

import '../../../components/colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    this.controller,
    this.maxLine = 1,
    this.hintText,
    this.validator,
    this.minHeight = 50,
  });
  final TextEditingController? controller;
  final int maxLine;
  final String? hintText;
  final String? Function(String?)? validator;
  final double minHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          cursorColor: CustomColor.bgLight2,
          controller: controller,
          maxLines: maxLine,
          style: const TextStyle(
            color: CustomColor.scaffoldBg,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(16),
            fillColor: CustomColor.whiteSecondary,
            filled: true,
            focusedBorder: getInputBorder,
            enabledBorder: getInputBorder,
            border: getInputBorder,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: CustomColor.bgLight2,
            ),
            // errorMaxLines: 2,
            // errorStyle: const TextStyle(height: 0.8),
            errorStyle: const TextStyle(
              color: Colors.red,
              fontSize: 12,
            ),
          ),
          validator: validator,
        ),
        // const SizedBox(height: 10.0),
      ],
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}

class CustomTextField1 extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;

  final bool obscureText;
  final int? maxLines;
  final TextInputType? keyboardType;
  final VoidCallback? toggleVisibily;
  final bool? showPassword;
  final bool useHintForError;
  final Function(String)? onChanged;
  final double? width;
  final double? height;

  //final String? Function(String?)? validator;

  // static final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  CustomTextField1({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    required this.obscureText,
    this.maxLines,
    this.keyboardType,
    this.toggleVisibily,
    this.showPassword,
    this.useHintForError = false,
    this.onChanged,
    this.width,
    this.height,

    // this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        keyboardType: keyboardType,
        maxLines: maxLines,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 14),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.grey.shade500),
          suffixIcon: toggleVisibily != null
              ? IconButton(
                  icon: Icon(
                    (showPassword ?? false)
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey.shade600,
                  ),
                  onPressed: toggleVisibily,
                )
              : null,
        ),
        onChanged: onChanged,
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     if (useHintForError && hintText != null && hintText!.isNotEmpty) {
        //       return hintText != null
        //           ? 'Please ${hintText!.toLowerCase()}'
        //           : 'Please enter a value';
        //     } else {
        //       return labelText != null
        //           ? 'Please ${labelText!.toLowerCase()}'
        //           : 'Please enter a value';
        //     }
        //   }
        //   return null;
        // },
        validator: (value) {
          if (value == null || value.isEmpty) {
            if (useHintForError && hintText != null && hintText!.isNotEmpty) {
              // Handle hintText case
              String hint = hintText!.toLowerCase();
              // Remove any trailing '...' or other punctuation if present
              hint = hint.replaceAll(RegExp(r'[\.\?\!]*$'), '');
              return 'Please enter $hint';
            } else if (labelText != null && labelText!.isNotEmpty) {
              // Handle labelText case
              String label = labelText!.toLowerCase();
              label = label.replaceAll(RegExp(r'[\.\?\!]*$'), '');
              return 'Please enter $label';
            } else {
              // Default case
              return 'Please enter a value';
            }
          }
          return null;
        },
      ),
    );
  }
}
