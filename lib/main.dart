// main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/sw_views.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Stopwatch MVC',
      debugShowCheckedModeBanner: false,
      home: StopwatchView(),
    );
  }
}
