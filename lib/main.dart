import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/Acceuil.dart';
import 'package:project_one/screens/Crochet.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    initialRoute: '/Acceuil',
    theme: ThemeData(accentColor: Colors.pink, primaryColor: Colors.pinkAccent),
    defaultTransition: Transition.leftToRightWithFade,
    locale: Get.deviceLocale,
    fallbackLocale: Locale('fr'),
    getPages: [
      GetPage(name: '/Acceuil', page: () => Acceuil()),
      GetPage(name: '/Crochet', page: () => Crochet())
    ],
  ));
}
