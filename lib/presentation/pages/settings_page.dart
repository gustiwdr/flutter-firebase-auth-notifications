import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class SettingsPage extends StatelessWidget {
  final HomeController controller;

  const SettingsPage(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: const Center(child: Text('Settings Page')),
      selectedIndex: 2, // Settings tab is selected
      controller: controller,
    );
  }
}
