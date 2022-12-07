import 'package:flutter/material.dart';
import 'package:shahzaibali_awan_mss_ass/homscreen.dart';
import 'package:get/get.dart';
import 'theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: Themes.light,
      darkTheme: Themes.dark,
      home:  HomeScreen(),
    );
  }
}

