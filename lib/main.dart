import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'screens/index.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'this is YTS',
    defaultTransition: Transition.native,
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
