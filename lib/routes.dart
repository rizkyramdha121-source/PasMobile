import 'package:flutter_pas/pages/detail_makanan_page.dart';
import 'package:flutter_pas/pages/login_page.dart';
import 'package:flutter_pas/pages/main_menu_drawer_pages.dart';
import 'package:flutter_pas/pages/uji_coba_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String ujicobapage = "/ujicobapage";
  static const String mainmenudrawer = "/mainmenudrawer";
  static const String loginpage = "/loginpage";
  static const String detailMakanan = "/detailMakanan";

  static final pages = [
    GetPage(name: ujicobapage, page: () => ujiCobaPage()),
    GetPage(name: mainmenudrawer, page: () => MainMenuDrawer()),
    GetPage(name: loginpage, page: () => LoginPage()),
    GetPage(name: detailMakanan, page: () => DetailMakananPage())
  ];
}