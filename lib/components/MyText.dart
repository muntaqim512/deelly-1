import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final bool bold;
  final TextDecoration? decoration;
  final int? maxLines;
  final FontWeight fontWeight;
  final TextAlign align;
  final double? latterSpacing;
  const MyText({
    super.key,
    required this.text,
    this.decoration,
    this.color = Colors.black,
    this.fontSize = 14,
    this.maxLines,
    this.latterSpacing,
    this.fontWeight = FontWeight.normal,
    this.bold = false,
    this.align = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.fade,
      style: GoogleFonts.inter(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
        letterSpacing: latterSpacing,
      ),
      textAlign: align,
    );
  }
}
