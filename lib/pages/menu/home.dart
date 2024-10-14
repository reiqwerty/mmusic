import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmusic/adapter/adapter_home.dart';
import '../../model/model_music.dart';
import '../../widget/my_image.dart';
import '../../widget/my_rich_text.dart';
import '../../widget/my_text.dart';

class HomePage extends StatelessWidget {
  final List<ModelMusic> trendingPlaylist = [
    ModelMusic(title: "Ransom", name: "Lil Tecca", imagePath: "assets/music/ransom.png"),
    ModelMusic(title: "goosebumps", name: "Travis Scott", imagePath: "assets/music/goosebumps.png"),
    ModelMusic(title: "Lonely", name: "Akon", imagePath: "assets/music/lonely.png"),
    ModelMusic(title: "Die For You", name: "The Weeknd", imagePath: "assets/music/dieforyou.png"),
    ModelMusic(title: "Armageddon", name: "aespa", imagePath: "assets/music/armageddon.png"),
    ModelMusic(title: "The Box", name: "Roddy Rich", imagePath: "assets/music/thebox.png"),
    ModelMusic(title: "Coldplay", name: "Artist", imagePath: "assets/music/coldplay.png"),
    ModelMusic(title: "One Direction", name: "Artist", imagePath: "assets/music/onedirection.png")
  ];

  final List<ModelMusic> recommendedPlaylist = [
    ModelMusic(title: "double take", name: "dhruv", imagePath: "assets/music/doubletake.png"),
    ModelMusic(title: "A\$AP Rocky", name: "Artist", imagePath: "assets/music/asap.png"),
    ModelMusic(title: "odoriko", name: "Vaundy", imagePath: "assets/music/odoriko.png"),
    ModelMusic(title: "Saturn", name: "SZA", imagePath: "assets/music/saturn.png"),
    ModelMusic(title: "Fireflies", name: "Owl City", imagePath: "assets/music/fireflies.png"),
    ModelMusic(title: "Heat Waves", name: "Glass Animals", imagePath: "assets/music/heatwaves.png"),
    ModelMusic(title: "Ariana Grande", name: "Artist", imagePath: "assets/music/arianagrande.png"),
    ModelMusic(title: "Peradaban", name: ".Feast", imagePath: "assets/music/peradaban.png"),
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

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.only(left: 25.0, right: 25.0),
                child: MyImage(imagePath: 'assets/images/banner.png'),
              ),
              SizedBox(height: 30),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Trending today',
                      fontSize: 22,
                      colors: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Montserrat-ExtraBold',
                    )
                  ],
                ),
              ),
              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.0),
                child: Container(
                  height: 113,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: trendingPlaylist.length,
                    itemBuilder: (context, index) {
                      return AdapterHome(modelMusic: trendingPlaylist[index]);
                    },
                  ),
                ),
              ),
              SizedBox(height: 32),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Recommended for you',
                      fontSize: 22,
                      colors: Colors.white,
                      fontFamily: 'Montserrat-ExtraBold',
                      fontWeight: FontWeight.w800,
                    )
                  ],
                ),
              ),
              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.0),
                child: Container(
                  height: 113,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: recommendedPlaylist.length,
                    itemBuilder: (context, index) {
                      return AdapterHome(modelMusic: recommendedPlaylist[index]);
                    },
                  ),
                ),
              ),
              SizedBox(height: 32),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Discover your favorites',
                      fontSize: 22,
                      colors: Colors.white,
                      fontFamily: 'Montserrat-ExtraBold',
                      fontWeight: FontWeight.w800,
                    )
                  ],
                ),
              ),
              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.0),
                child: Container(
                  height: 113,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: recommendedPlaylist.length,
                    itemBuilder: (context, index) {
                      return AdapterHome(modelMusic: recommendedPlaylist[index]);
                    },
                  ),
                ),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
