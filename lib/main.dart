import 'package:flutter/material.dart';
import 'package:repeat_two/pages/homepage/home_page.dart';
import 'package:repeat_two/pages/profilepage/profile_page.dart';
import 'package:repeat_two/pages/settingspage/setting_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Repeat again",
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) {
          return const HomePage();
        },
        SettingPage.route: (context) {
          return const SettingPage();
        },
        ProfilePage.route: (context) {
          return const ProfilePage();
        },
      },
    );
  }
}
