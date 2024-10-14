import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mmusic/adapter/adapter_library.dart';
import 'package:mmusic/model/model_music.dart';
import 'package:mmusic/widget/my_button.dart';
import '../../widget/my_image.dart';
import '../../widget/my_rich_text.dart';

class LibraryPage extends StatelessWidget {
  final List<ModelMusic> playlist = [
    ModelMusic(title: "renungkan", name: "Playlist • reiqwerty", imagePath: "assets/images/renungkan.png"),
    ModelMusic(title: "mix", name: "Playlist • reiqwerty", imagePath: "assets/images/mix.png"),
    ModelMusic(title: "gaming", name: "Playlist • reiqwerty", imagePath: "assets/images/gaming.png"),
    ModelMusic(title: "aespa", name: "Artist", imagePath: "assets/images/aespa.png"),
    ModelMusic(title: "nugas", name: "Playlist • reiqwerty", imagePath: "assets/images/nugas.png"),
    ModelMusic(title: "Eminem", name: "Artist", imagePath: "assets/images/eminem.png"),
    ModelMusic(title: "turu", name: "Playlist • reiqwerty", imagePath: "assets/images/turu.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: MyRichText(
          firstText: 'M',
          secondText: 'Music',
          colorFirstText: Color(0xffFAFF00),
          colorSecondText: Colors.white,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: GestureDetector(
                onTap: () {
                  Get.toNamed('/profile');
                },
                child: MyImage(imagePath: 'assets/images/profileico.png', width: 36.0, height: 36.0,)
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff0C0C0C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Your Playlist',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyButton(text: 'All', backgroundColor: Color(0xffFAFF00), foregroundColor: Colors.black),
                SizedBox(width: 8.0),
                MyButton(text: 'Music', backgroundColor: Colors.black, foregroundColor: Colors.white),
                SizedBox(width: 8.0),
                MyButton(text: 'Podcast', backgroundColor: Colors.black, foregroundColor: Colors.white),
              ],
            ),
          ),
          SizedBox(height: 13,),
          Expanded(
            child: ListView.builder(
              itemCount: playlist.length,
              itemBuilder: (context, index) {
                return AdapterLibrary(modelLibrary: playlist[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

}
