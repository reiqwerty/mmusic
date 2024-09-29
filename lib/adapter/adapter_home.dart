import 'package:flutter/material.dart';
import 'package:mmusic/model/model_music.dart';

import '../widget/my_image.dart';
import '../widget/my_text.dart';

class AdapterHome extends StatelessWidget {
  final ModelMusic modelMusic;

  const AdapterHome({super.key, required this.modelMusic});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              MyImage(imagePath: modelMusic.imagePath, width: 80, height: 80,),
              MyText(text: modelMusic.title, fontSize: 13, colors: Colors.white, fontFamily: 'Poppins-SemiBold', fontWeight: FontWeight.w600,),
              MyText(text: modelMusic.name, fontSize: 10, colors: Colors.white, fontFamily: 'Poppins-Light', fontWeight: FontWeight.w300,)
            ],
          ),
        ],
      ),
    );
  }
}
