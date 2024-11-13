// lib/pages/info_page.dart
import 'package:flutter/material.dart'  ;

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info Page'),
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
