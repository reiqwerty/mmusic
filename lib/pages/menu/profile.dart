import 'package:flutter/material.dart';
import 'package:mmusic/widget/my_image.dart';
import 'package:mmusic/widget/my_text.dart';
import '../../adapter/adapter_home.dart';
import '../../model/model_music.dart';
import '../../widget/my_rich_text.dart';

class ProfilePage extends StatelessWidget {
  final List<ModelMusic> recently = [
    ModelMusic("21 Savage", "Artist", "assets/music/21savage.png"),
    ModelMusic("headbang", "Public Playlist", "assets/music/headbang.png"),
    ModelMusic("Ditto", "NewJeans", "assets/music/ditto.png"),
    ModelMusic("Post Malone", "Artist", "assets/music/postmalone.png"),
    ModelMusic("20 Min", "Lil Uzoi Vert", "assets/music/20min.png"),
    ModelMusic("Blueberry Faygo", "Lil Mosey", "assets/music/blueberryfaygo.png"),
    ModelMusic("Overdose", "natori", "assets/music/overdose.png"),
    ModelMusic("Ransom", "Lil Tecca", "assets/music/ransom.png"),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          MyImage(imagePath: 'assets/images/profileico.png', width: 150, height: 150),

          SizedBox(height: 20),
          MyText(text: 'reiqwerty', fontSize: 28, colors: Colors.white, fontFamily: 'Montserrat-Black', fontWeight: FontWeight.w900,),

          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(text: '1 • Following', fontSize: 16, colors: Colors.grey, fontFamily: 'Poppins-Medium', fontWeight: FontWeight.w500,),
              SizedBox(width: 10),
              MyText(text: '67 • Follower', fontSize: 16, colors: Colors.grey, fontFamily: 'Poppins-Medium', fontWeight: FontWeight.w500,)
            ],
          ),

          SizedBox(height: 10),
          MyText(text: '166.7 hours listening music', fontSize: 16, colors: Colors.yellowAccent, fontFamily: 'Poppins-Medium', fontWeight: FontWeight.w500,),

          SizedBox(height: 40),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: 'Recently Played',
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
                itemCount: recently.length,
                itemBuilder: (context, index) {
                  return AdapterHome(modelMusic: recently[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
