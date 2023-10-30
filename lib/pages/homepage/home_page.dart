import 'package:flutter/material.dart';
import 'package:repeat_two/pages/profilepage/profile_page.dart';
import 'package:repeat_two/pages/settingspage/setting_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String route = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Home Page"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 33, 32, 32),
        foregroundColor: Colors.white,
        actions: const [
          Icon(Icons.search),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 52, 50, 50),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOADING......",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Profile Page",
              style: TextStyle(color: Colors.white60, fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "a",
            backgroundColor: Colors.red,
            onPressed: () {
              debugPrint("AFTER PRESSED");
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return const SettingPage();
              //     },
              //   ),
              // );
              Navigator.pushNamed(context, SettingPage.route);
              debugPrint("Before Pressed");
            },
            child: const Icon(Icons.settings),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag: 'b',
            backgroundColor: Colors.teal,
            foregroundColor: Colors.yellow,
            onPressed: () {
              Navigator.pushNamed(context, ProfilePage.route);
            },
            child: const Icon(Icons.person_2),
          )
        ],
      ),
    );
  }
}
