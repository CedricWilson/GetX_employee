import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/UI/Home/home.dart';
import 'package:test_getx/UI/Second/second.dart';

class Routes {
  static String home = '/';
  static String second = '/second';


  static Map<String, Widget Function(BuildContext)> getRoutes() {
    return {
      // When navigating to the "/" route, build the FirstScreen widget.
      home: (context) => HomePage(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      // second: (context) => SecondPage(),
    };
  }
}
