import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class ProfilePage extends StatelessWidget {
  final HomeController controller;

  const ProfilePage(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: const Center(child: Text('Profile Page')),
      selectedIndex: 1, // Profile tab is selected
      controller: controller,
    );
  }
}
