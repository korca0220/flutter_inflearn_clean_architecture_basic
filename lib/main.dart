import 'package:flutter/material.dart';
import 'package:flutter_inflearn_clean_architecture_basic/data/data_source/pixabay_api.dart';
import 'package:flutter_inflearn_clean_architecture_basic/data/photo_api_repository_impl.dart';
import 'package:flutter_inflearn_clean_architecture_basic/domain/use_case/get_photos_use_case.dart';
import 'package:flutter_inflearn_clean_architecture_basic/presentation/home/home_screen.dart';
import 'package:flutter_inflearn_clean_architecture_basic/presentation/home/home_screen_view_model.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (_) => HomeScreenViewModel(GetPhotosUseCase(
          PhotoApiRepositoryImpl(
            PixaBayAPi(http.Client()),
          ),
        )),
        child: const HomeScreen(),
      ),
    );
  }
}
