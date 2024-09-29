import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmusic/widget/my_rich_text.dart';
import 'package:mmusic/widget/my_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyRichText(
              firstText: 'M',
              secondText: 'Music',
              colorFirstText: Color(0xffFAFF00),
              colorSecondText: Colors.white,
              fontSize: 50,
            ),
            SizedBox(height: 16),
            MyText(
                text: 'Musik terbaik ada di sini, hanya untukmu.',
                fontSize: 20,
                colors: Colors.white,
                fontFamily: 'Montserrat-SemiBold',
                fontWeight: FontWeight.w600),
            SizedBox(height: 30),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFAFF00),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/dashboard');
                },
                child: MyText(
                  text: 'Login',
                  fontSize: 20,
                  colors: Colors.black,
                  fontFamily: 'Montserrat-Bold',
                  fontWeight: FontWeight.w700,
                )
            ),
          ],
        ),
      ),
    );
  }
}
