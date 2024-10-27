import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/privacy_policy_page.dart';
import 'pages/driver_terms_page.dart';
import 'pages/passenger_terms_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qevoo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Define routes for navigation
      routes: {
        '/': (context) => const HomePage(),
        '/privacy-policy': (context) => const PrivacyPolicyPage(),
        '/driver-terms': (context) => const DriverTermsPage(),
        '/passenger-terms': (context) => const PassengerTermsPage(),
      },
    );
  }
}