import 'package:flutter/material.dart';
import 'package:mmusic/controller/favorite_controller.dart';
import 'package:mmusic/model/model_music.dart';
import 'package:get/get.dart';
import '../widget/my_image.dart';
import '../widget/my_text.dart';

class AdapterHome extends StatelessWidget {
  final FavoriteController taskController = Get.put(FavoriteController());
  final ModelMusic modelMusic;

  AdapterHome({super.key, required this.modelMusic});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: GestureDetector(
        onLongPress: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: Color(0xff0C0C0C),
            builder: (BuildContext context) {
              return SizedBox(
                height: 250,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: MyImage(
                            imagePath: modelMusic.imagePath,
                            width: 60,
                            height: 60,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: modelMusic.title,
                              fontSize: 16,
                              colors: Colors.white,
                              fontFamily: 'Poppins-SemiBold',
                              fontWeight: FontWeight.w600,
                            ),
                            MyText(
                              text: modelMusic.name,
                              fontSize: 12,
                              colors: Colors.white,
                              fontFamily: 'Poppins-Light',
                              fontWeight: FontWeight.w300,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Icon(Icons.favorite_border, color: Colors.white),
                      title: MyText(text: 'Add To Favorite', fontSize: 16, colors: Colors.white),
                      onTap: () {
                        ModelMusic task = ModelMusic(
                          title: modelMusic.title,
                          name: modelMusic.name,
                          imagePath: modelMusic.imagePath,
                        );
                        taskController.addTask(task);
                        Get.snackbar(
                          'Berhasil ditambahkan ke favorite',
                          'Added ${modelMusic.title} to Favorite',
                          backgroundColor: Colors.black,
                          colorText: Colors.white,
                          snackPosition: SnackPosition.TOP,
                          duration: Duration(seconds: 2),
                        );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.close_rounded, color: Colors.white),
                      title: MyText(text: 'Close', fontSize: 16, colors: Colors.white),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Column(
          children: [
            MyImage(
              imagePath: modelMusic.imagePath,
              width: 80,
              height: 80,
            ),
            MyText(
              text: modelMusic.title,
              fontSize: 13,
              colors: Colors.white,
              fontFamily: 'Poppins-SemiBold',
              fontWeight: FontWeight.w600,
            ),
            MyText(
              text: modelMusic.name,
              fontSize: 10,
              colors: Colors.white,
              fontFamily: 'Poppins-Light',
              fontWeight: FontWeight.w300,
            ),
          ],
        ),
      ),
    );
  }
}