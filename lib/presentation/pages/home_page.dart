import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  const HomePage(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent:
          const Center(child: Text('Home Page')), // Home page specific content
      selectedIndex: 0, // Home tab is selected
      controller: controller,
    );
  }
}
