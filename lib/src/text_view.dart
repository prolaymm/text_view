import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  final String title;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLine;
  final double? wordSpacing;
  final double? letterSpacing;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final double? height;
  final TextOverflow? overflow;

  const TextView(
      {Key? key,
        required this.title,
        this.fontSize,
        this.fontWeight,
        this.maxLine,
        this.textAlign,
        this.color,
        this.decoration,
        this.wordSpacing,
        this.letterSpacing,
        this.height, this.overflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: color,
          fontWeight: fontWeight,
          decoration: decoration,
          wordSpacing: wordSpacing,
          letterSpacing: letterSpacing,
          height: height,
          fontSize: fontSize),
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: overflow,
    );
  }
}