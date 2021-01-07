import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/Messages.dart';
import 'package:getx_state_management/change_language.dart';
import 'package:getx_state_management/home.dart';
import 'package:getx_state_management/restaurant_controller.dart';
import 'edit_name.dart';
import 'add_followers.dart';
import 'toggle_status.dart';
import 'edit_follower_count.dart';
import 'add_reviews.dart';
import 'update_menu.dart';

void main() {
  Get.put(RestaurantController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      title: 'Getx State Demo',
      home: Home(),
      routes: {
        'home': (context) => Home(),
        'edit_name': (context) => EditName(),
        'add_followers': (context) => AddFollowers(),
        'toggle_status': (context) => ToggleStatus(),
        'edit_follower_count': (context) => EditFollowerCount(),
        'add_reviews': (context) => AddReviews(),
        'update_menu': (context) => UpdateMenu(),
        'change_language':(context) => ChangeLanguage()
      },
    );
  }
}

