import 'package:flutter/material.dart';
import 'package:mmusic/adapter/adapter_library.dart';
import 'package:mmusic/model/model_music.dart';
import '../../widget/my_rich_text.dart';

class LibraryPage extends StatelessWidget {
  final List<ModelMusic> playlist = [
    ModelMusic('renungkan', 'Playlist • reiqwerty', 'assets/images/renungkan.png'),
    ModelMusic('mix', 'Playlist • reiqwerty', 'assets/images/mix.png'),
    ModelMusic('gaming', 'Playlist • reiqwerty', 'assets/images/gaming.png'),
    ModelMusic('aespa', 'Artist', 'assets/images/aespa.png'),
    ModelMusic('nugas', 'Playlist • eiqwerty', 'assets/images/nugas.png'),
    ModelMusic('Eminem', 'Artist', 'assets/images/eminem.png'),
    ModelMusic('turu', 'Playlist • reiqwerty', 'assets/images/turu.png'),
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
          scrolledUnderElevation: 0,
        ),
        backgroundColor: Color(0xff0C0C0C),
        body: ListView.builder(
          itemCount: playlist.length,
          itemBuilder: (context, index) {
            return AdapterLibrary(modelLibrary: playlist[index]);
          },
        ),
    );
  }
}
