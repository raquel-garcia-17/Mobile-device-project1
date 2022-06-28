import 'package:flutter/material.dart';
import 'package:flutter_application_2/router/app_routes.dart';
import 'package:flutter_application_2/screens/alert_screen.dart';
import 'package:flutter_application_2/screens/animation_screen.dart';
import 'package:flutter_application_2/screens/home_screen.dart';
import 'package:flutter_application_2/screens/listview_screen.dart';
import 'package:flutter_application_2/screens/listview_screen_2.dart';
import 'package:flutter_application_2/screens/card_screen.dart';
import 'package:flutter_application_2/themes/app_themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // static const Color primary = Colors.greenAccent;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppThemes.greenDarkTheme
      // home: ListView2Screen()
    );
  }
}
