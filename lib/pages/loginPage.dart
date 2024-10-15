import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmusic/widget/my_button.dart';
import 'package:mmusic/widget/my_rich_text.dart';
import 'package:mmusic/widget/my_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/loginbg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Center(
                  child: MyRichText(
                    firstText: 'M',
                    secondText: 'Music',
                    colorFirstText: Color(0xffFAFF00),
                    colorSecondText: Colors.white,
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 12),
                Center(
                  child: MyText(
                    text: 'Musik terbaik ada di sini, hanya untukmu.',
                    fontSize: 20,
                    colors: Colors.white,
                    fontFamily: 'Montserrat-SemiBold',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 120),
                    child: MyButton(
                      text: 'Get Started',
                      backgroundColor: Color(0xffFAFF00),
                      foregroundColor: Colors.black,
                      onPressed: () {
                        Get.toNamed('/dashboard');
                      },
                    )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
