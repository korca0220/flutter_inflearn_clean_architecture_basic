import 'package:flutter_inflearn_clean_architecture_basic/data/data_source/pixabay_api.dart';
import 'package:flutter_inflearn_clean_architecture_basic/data/photo_api_repository_impl.dart';
import 'package:flutter_inflearn_clean_architecture_basic/domain/repository/photo_api_repository.dart';
import 'package:flutter_inflearn_clean_architecture_basic/domain/use_case/get_photos_use_case.dart';
import 'package:flutter_inflearn_clean_architecture_basic/presentation/home/home_screen_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:http/http.dart' as http;

// Provider 객체
List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

//  독리적인 객체
List<SingleChildWidget> independentModels = [
  Provider<http.Client>(
    create: (context) => http.Client(),
  ),
];

// 의존성 있는 객체
List<SingleChildWidget> dependentModels = [
  ProxyProvider<http.Client, PixaBayAPi>(
    update: (context, client, _) => PixaBayAPi(client),
  ),
  ProxyProvider<PixaBayAPi, PhotoApiRepository>(
    update: (context, api, _) => PhotoApiRepositoryImpl(api),
  ),
  ProxyProvider<PhotoApiRepository, GetPhotosUseCase>(
    update: (context, repository, _) => GetPhotosUseCase(repository),
  ),
];

// 뷰모델
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<HomeScreenViewModel>(
    create: (context) => HomeScreenViewModel(context.read<GetPhotosUseCase>()),
  ),
];
