import 'package:flutter/material.dart';

import 'package:flutter_inflearn_clean_architecture_basic/data/di/provider_setup.dart';
import 'package:flutter_inflearn_clean_architecture_basic/presentation/home/home_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: globalProviders,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
