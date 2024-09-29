import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color colors;
  final FontWeight? fontWeight;
  final String? fontFamily;

  const MyText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.colors,
    this.fontWeight,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: fontFamily,
          color: colors,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
