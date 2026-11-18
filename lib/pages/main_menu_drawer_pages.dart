import 'package:flutter/material.dart';
import 'package:flutter_pas/controller/main_menu_drawe_controller.dart';
import 'package:get/get.dart';

class MainMenuDrawer extends StatelessWidget {
  MainMenuDrawer({super.key});

  final menuDrawerController = Get.put(MainMenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(
            "Pilihan Menu",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 25, 144, 223)),

          endDrawer: NavigationDrawer(
            selectedIndex: menuDrawerController.selectedIndex.value,

          onDestinationSelected: (index) {
            menuDrawerController.changeIndex(index);
            Navigator.pop(context);
          },
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(28, 24, 16, 10),
              child: Text(
                "Select Page",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            NavigationDrawerDestination(
              icon: Icon(Icons.home),
              label: Text("Home"),
            ),

            NavigationDrawerDestination(
              icon: Icon(Icons.sports_soccer),
              label: Text("Feat"),
            ),

            NavigationDrawerDestination(
              icon: Icon(Icons.person),
              label: Text("Profile"),
            ),
          ],
        ),

        body: IndexedStack(
          index: menuDrawerController.selectedIndex.value,
          children: menuDrawerController.listPages,
        ),
      ),
    );
  }
}