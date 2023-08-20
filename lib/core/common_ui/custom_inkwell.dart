import 'package:flutter/material.dart';
import 'package:just_adobe_app/core/app/theme/app_color_palette.dart';

class CustomInkWell extends StatefulWidget {
  final Function() onTap;
  final Widget child;
  const CustomInkWell({super.key, required this.onTap, required this.child});
  @override
  _CustomInkWellState createState() => _CustomInkWellState();
}
class _CustomInkWellState extends State<CustomInkWell> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: lightColorPalette.transparentColor,
      highlightColor: lightColorPalette.transparentColor,
      onTap: widget.onTap,
      child: widget.child,
    );
  }
}