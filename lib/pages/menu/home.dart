import 'package:flutter/material.dart';
import 'package:mmusic/adapter/adapter_home.dart';
import '../../model/model_music.dart';
import '../../widget/my_image.dart';
import '../../widget/my_rich_text.dart';
import '../../widget/my_text.dart';

class HomePage extends StatelessWidget {
  final List<ModelMusic> trendingPlaylist = [
    ModelMusic("Ransom", "Lil Tecca", "assets/music/ransom.png"),
    ModelMusic("goosebumps", "Travis Scott", "assets/music/goosebumps.png"),
    ModelMusic("Lonely", "Akon", "assets/music/lonely.png"),
    ModelMusic("Die For You", "The Weeknd", "assets/music/dieforyou.png"),
    ModelMusic("Armageddon", "aespa", "assets/music/armageddon.png"),
    ModelMusic("The Box", "Roddy Rich", "assets/music/thebox.png"),
    ModelMusic("Coldplay", "Artist", "assets/music/coldplay.png"),
    ModelMusic("One Direction", "Artist", "assets/music/onedirection.png"),
  ];

  final List<ModelMusic> recommendedPlaylist = [
    ModelMusic("double take", "dhruv", "assets/music/doubletake.png"),
    ModelMusic("A\$AP Rocky", "Artist", "assets/music/asap.png"),
    ModelMusic("odoriko", "Vaundy", "assets/music/odoriko.png"),
    ModelMusic("Saturn", "SZA", "assets/music/saturn.png"),
    ModelMusic("Fireflies", "Owl City", "assets/music/fireflies.png"),
    ModelMusic("Heat Waves", "Glass Animals", "assets/music/heatwaves.png"),
    ModelMusic("Ariana Grande", "Artist", "assets/music/arianagrande.png"),
    ModelMusic("Peradaban", ".Feast", "assets/music/peradaban.png"),
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
      ),
      backgroundColor: Color(0xff0C0C0C),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: MyImage(imagePath: 'assets/images/banner.png', width: 500, height: 195),
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
            ],
          ),
        ),
      ),
    );
  }
}
