import 'package:flutter/material.dart';
import 'package:mmusic/model/model_music.dart';
import 'package:mmusic/widget/my_image.dart';
import 'package:mmusic/widget/my_text.dart';

class AdapterLibrary extends StatelessWidget {
  final ModelMusic modelLibrary;

  const AdapterLibrary({super.key, required this.modelLibrary});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          children: [
            MyImage(imagePath: modelLibrary.imagePath, width: 100, height: 100),
            SizedBox( width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: modelLibrary.title,
                  fontSize: 26,
                  fontFamily: 'Poppins-Medium',
                  fontWeight: FontWeight.w500,
                  colors: Color(0xffFAFF00),  
                ),
                SizedBox(height: 4),
                MyText(
                    text: modelLibrary.name, fontSize: 12, fontFamily: 'Poppins-Light', fontWeight: FontWeight.w300, colors: Colors.white)
              ],
            )
          ],
        ));
  }
}
