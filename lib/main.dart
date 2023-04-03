import 'package:flutter/material.dart';
import 'package:flutter_inflearn_clean_architecture_basic/data/pixabay_api.dart';
import 'package:flutter_inflearn_clean_architecture_basic/ui/home_screen.dart';
import 'package:flutter_inflearn_clean_architecture_basic/ui/home_screen_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Provider(
        create: (_) => HomeScreenViewModel(PixabayApi()),
        child: const HomeScreen(),
      ),
    );
  }
}
