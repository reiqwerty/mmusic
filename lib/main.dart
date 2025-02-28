import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmusic_test/pages/dashboardPage.dart';
import 'package:mmusic_test/pages/loginPage.dart';

import 'bindings/bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(initialRoute: '/',
        getPages: [
          GetPage(name: "/", page: () => LoginPage()),
          GetPage(name: "/dashboard", page: () => DashboardPage(), binding: MyBindings())
        ]);
  }
}
