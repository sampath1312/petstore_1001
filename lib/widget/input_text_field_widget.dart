import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petstore_sampathk_1001/utils/colors_constants.dart';

class InputTextFieldWidget extends StatelessWidget {
  const InputTextFieldWidget({
    super.key,
    required this.hintText,
    required this.textEditingController,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.redonly = false,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.inputFormatters,
    this.maxLines = 1,
  });
  final String hintText;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final bool? redonly;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [    
        //    Align(
        //     alignment: Alignment.centerLeft,
        //      child: Text(
        //       hintText,  // Using hintText as the label for now
        //       style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         fontSize: 16,
        //         color: const Color.fromARGB(193, 0, 0, 0), // Adjust the color as needed
        //       ),
        //                ),
        //    ),
          TextFormField(
            maxLines: maxLines,
            controller: textEditingController,
            keyboardType: keyboardType,
            obscureText: obscureText,
            readOnly: redonly ?? false,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              filled: true,
              fillColor: ColorsConstants.inputTextfillColor,
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              border: InputBorder.none,
            ),
            validator: validator,
          ),
        ],
      ),
    );
  }
}
