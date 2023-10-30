import 'package:flutter/material.dart';
import 'package:repeat_two/pages/profilepage/profile_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});
  static const String route = "/setting";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: const Text("Setting Page"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Setting Page"),
            Icon(Icons.settings),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(164, 171, 16, 16),
        foregroundColor: Colors.black,
        onPressed: () {
          Navigator.pushReplacementNamed(context, ProfilePage.route);
        },
        child: const Icon(Icons.person_2_sharp),
      ),
    );
  }
}
