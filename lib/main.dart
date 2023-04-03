import 'package:flutter/material.dart';
import 'package:flutter_inflearn_clean_architecture_basic/data/api.dart';
import 'package:flutter_inflearn_clean_architecture_basic/data/photo_provider.dart';
import 'package:flutter_inflearn_clean_architecture_basic/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhotoProvider(
        api: PixabayApi(),
        child: const HomeScreen(),
      ),
    );
  }
}
