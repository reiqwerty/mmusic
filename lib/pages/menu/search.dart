import 'package:flutter/material.dart';
import 'package:mmusic/widget/my_text.dart';
import '../../widget/my_image.dart';
import '../../widget/my_rich_text.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
        children: [
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: MyText(
                text: 'Search',
                fontSize: 24,
                colors: Colors.white,
                fontWeight: FontWeight.w800,
                fontFamily: 'Montserrat-ExtraBold',
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffD9D9D9),
                prefixIcon: Icon(Icons.search, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search'
              ),
            ),
          ),
          SizedBox(height: 8),
          Expanded(
              child: GridView(
                padding: EdgeInsets.all(30),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10, childAspectRatio: 2.0),
                children: [
                  MyImage(imagePath: "assets/images/anime.png"),
                  MyImage(imagePath: "assets/images/edm.png"),
                  MyImage(imagePath: "assets/images/hiphop.png"),
                  MyImage(imagePath: "assets/images/indie.png"),
                  MyImage(imagePath: "assets/images/kpop.png"),
                  MyImage(imagePath: "assets/images/lofi.png"),
                  MyImage(imagePath: "assets/images/pop.png"),
                  MyImage(imagePath: "assets/images/rock.png"),
                  MyImage(imagePath: "assets/images/r&b.png"),
                  MyImage(imagePath: "assets/images/country.png"),
                  MyImage(imagePath: "assets/images/easylistening.png"),
                  MyImage(imagePath: "assets/images/jazz.png"),
                  MyImage(imagePath: "assets/images/classic.png"),
                  MyImage(imagePath: "assets/images/metal.png"),
                ],
          ))
        ],
      ),
    );
  }
}
