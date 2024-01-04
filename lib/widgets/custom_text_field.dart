import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField.CustomTextField(
      {this.obscureText = false,
      this.onChanged,
      this.hintText,
      this.inputType});
  bool? obscureText;
  String? hintText;
  TextInputType? inputType;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      obscureText: obscureText!,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hintText,

          // مش ضاغط عليه
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(), borderRadius: BorderRadius.circular(8)),
          border: OutlineInputBorder(
              //العام

              borderSide: BorderSide(),
              borderRadius: BorderRadius.circular(8))),
    );
  }
}
