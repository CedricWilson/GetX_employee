import 'package:get/get.dart';
import 'package:test_getx/UI/Home/home.dart';
import 'package:test_getx/UI/Second/second.dart';

class Routes {
  static final String home = "/home";
  static String second = "/second";

  static final routes = [
    GetPage(
      name: home,
      page: () => HomePage(),
    ),
    GetPage(
      name: second,
      page: () => SecondPage(),
    ),
  ];
}
