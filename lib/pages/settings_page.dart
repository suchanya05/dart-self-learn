// lib/pages/settings_page.dart
import 'package:flutter/material.dart'  hide CarouselController;

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);  // กลับไปยังหน้าก่อนหน้า
          },
          child: const Text('Back to Home Page'),
        ),
      ),
    );
  }
}
