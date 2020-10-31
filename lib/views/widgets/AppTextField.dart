import 'package:flutter/material.dart';

import '../../core/constants.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final bool showCounterText;
  final bool obscureText;
  final Widget prefixIcon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String) validator;
  final bool enabled;
  final Function(String) onFieldSubmitted;
  final Function(String) onChanged;
  final TextInputAction textInputAction;
  final int maxlength;

  const AppTextField({
    Key key,
    @required this.hintText,
    this.keyboardType,
    this.validator,
    this.controller,
    this.onFieldSubmitted,
    this.onChanged,
    this.enabled,
    this.maxlength,
    this.prefixIcon,
    this.obscureText,
    this.textInputAction,
    this.showCounterText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      textInputAction: textInputAction,
      obscureText: obscureText ?? false,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      maxLength: maxlength,
      enabled: enabled,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: kTextFieldFillColor,
        labelStyle: TextStyle(color: kLabelColor),
        contentPadding: const EdgeInsets.all(16),
        counterText: showCounterText ? null : "",
        prefixIcon: prefixIcon,
      ),
    );
  }
}
