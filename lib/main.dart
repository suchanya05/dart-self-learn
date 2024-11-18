// lib/main.dart
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/info_page.dart';
import 'pages/settings_page.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-Page App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(
            255, 137, 103, 158), // เปลี่ยนสีพื้นหลังทั้งแอป
      ),
      initialRoute: '/', // กำหนดหน้าแรกเป็น Home Page
      routes: {
        '/': (context) => const HomePage(),
        '/info': (context) => const InfoPage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
