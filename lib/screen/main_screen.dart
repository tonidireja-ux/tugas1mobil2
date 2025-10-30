import 'package:flutter/material.dart';
import 'home_screen.dart'; // ✅ pastikan file path benar

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TUGAS 1 MOVIE'),
        backgroundColor: Colors.blueAccent,
      ),
      body: const HomeScreen(), // ✅ panggil class HomeScreen di sini
    );
  }
}