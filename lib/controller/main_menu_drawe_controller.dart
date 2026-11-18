import 'package:flutter/material.dart';
import 'package:flutter_pas/menu/home.dart';
import 'package:flutter_pas/menu/profile.dart';
import 'package:get/get.dart';

class MainMenuDrawerController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [MenuHome(), ProfilePage()];
}