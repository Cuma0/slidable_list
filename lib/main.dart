import 'package:flutter/material.dart';

import 'home_page_view.dart';

void main() {
  runApp(const MyApp());
}

// Slidable List 🔥🚀

// Github: https://github.com/Cuma0 👨‍💻

// Instagram: @artinflutterland 👋

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slidable List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePageView(),
    );
  }
}
