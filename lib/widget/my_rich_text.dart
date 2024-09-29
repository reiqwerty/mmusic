import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Color colorFirstText;
  final Color colorSecondText;
  final double fontSize;

  const MyRichText({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.colorFirstText,
    required this.colorSecondText,
    this.fontSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: TextStyle(
              color: colorFirstText,
              fontWeight: FontWeight.w700,
              fontSize: fontSize,
              fontFamily: 'Montserrat-Bold',
            ),
          ),
          TextSpan(
            text: secondText,
            style: TextStyle(
              color: colorSecondText,
              fontWeight: FontWeight.w700,
              fontSize: fontSize,
              fontFamily: 'Montserrat-Bold',
            ),
          ),
        ],
      ),
    );
  }
}
