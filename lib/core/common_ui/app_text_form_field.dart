import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final List<TextInputFormatter>? inputFormatters;
  final Function(String) onChanged;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? labelText;
  final Function(String?)? onSaved;
  final TextInputType keyboardType;

  final TextInputAction textInputAction;

  final int? helperMaxLines, maxLines, maxLength, errorMaxLines;

  final TextStyle? helperStyle,
      labelStyle,
      style,
      hintStyle,
      prefixStyle,
      floatingLabelStyle;

  final String? helperText, counterText, hintText, prefixText, initialValue;

  final TextAlign textAlign;

  final Widget? prefix, prefixIcon, suffixIcon;

  final BoxConstraints? prefixIconConstraints;

  final Function()? onEditingComplete, onTap;
  final bool readOnly, showCursor;
  final bool? filled;
  final bool? obscureText;
  final TextCapitalization textCapitalization;
  final InputBorder? enabledBorder, focusedBorder;
  final TextDirection? hintTextDirection;
  final EdgeInsetsGeometry? contentPadding;

  final Color? fillColor;

  const AppTextFormField(
      {Key? key,
      this.inputFormatters,
      required this.onChanged,
      this.focusNode,
      this.controller,
      this.suffixIcon,
      this.obscureText,
      this.labelText, this.onSaved,
      required this.keyboardType,
      this.textInputAction = TextInputAction.next,
      this.maxLength,
      this.helperStyle,
      this.helperText,
      this.style,
      this.helperMaxLines,
      this.maxLines,
      this.counterText = "",
      this.errorMaxLines,
      this.labelStyle,
      this.textAlign = TextAlign.start,
      this.hintStyle,
      this.hintText,
      this.prefixStyle,
      this.prefixText,
      this.prefix,
      this.prefixIcon,
      this.prefixIconConstraints,
      this.floatingLabelStyle,
      this.onEditingComplete,
      this.initialValue,
      this.readOnly = false,
      this.textCapitalization = TextCapitalization.none,
      this.enabledBorder,
      this.focusedBorder,
      this.hintTextDirection,
      this.contentPadding,
      required this.showCursor,
      this.onTap,
      this.fillColor,
      this.filled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      onTap: onTap,
      readOnly: readOnly,
      initialValue: initialValue,
      onEditingComplete: onEditingComplete,
      textCapitalization: textCapitalization,
      textAlign: textAlign,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      focusNode: focusNode,
      onChanged: onChanged,
      maxLines: maxLines,
      maxLength: maxLength,
      controller: controller,
      showCursor: showCursor,
      autocorrect: false,
      enableSuggestions: false,
      enableInteractiveSelection: false,
      style: style,
      decoration: InputDecoration(
          floatingLabelStyle: floatingLabelStyle,
          contentPadding: contentPadding,
          prefixIconConstraints: prefixIconConstraints,
          isDense: true,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          fillColor: fillColor,
          filled: filled,
          // hintTextDirection: hintTextDirection,
          prefix: prefix,
          prefixText: prefixText,
          prefixStyle: prefixStyle,
          errorMaxLines: errorMaxLines,
          helperMaxLines: helperMaxLines,
          helperStyle: helperStyle,
          helperText: helperText,
          hintText: hintText,
          hintStyle: hintStyle,
          counterText: counterText,
          labelText: labelText,
          labelStyle: labelStyle,
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder),
      onSaved: onSaved,
    );
  }
}
