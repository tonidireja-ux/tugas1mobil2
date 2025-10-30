import 'package:flutter/material.dart';
import 'screen/main_screen.dart'; // arahkan sesuai folder kamu

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Movie',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(82, 41, 155, 1)),
        useMaterial3: true,
      ),
      home: const MainScreen(), // tampilkan halaman utama
    );
  }
}