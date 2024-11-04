import 'package:flutter/material.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/pages/profile_page.dart';
import 'presentation/pages/settings_page.dart';
import 'presentation/pages/login_page.dart';
import 'presentation/controllers/home_controller.dart';
import 'core/navigation/navigation_service.dart';
import 'domain/usecases/navigate_to_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'api/firebase_api.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseApi(); // Instantiate FirebaseApi to initialize notifications and messaging
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationService = NavigationService();
    final navigateToPageUseCase = NavigateToPageUseCase(navigationService);
    final homeController = HomeController(navigateToPageUseCase);

    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      title: 'Pert 6',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(homeController),
        '/home': (context) => HomePage(homeController),
        '/profile': (context) => ProfilePage(homeController),
        '/settings': (context) => SettingsPage(homeController),
      },
    );
  }
}
