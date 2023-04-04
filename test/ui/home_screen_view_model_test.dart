import 'package:flutter_inflearn_clean_architecture_basic/data/data_source/result.dart';
import 'package:flutter_inflearn_clean_architecture_basic/domain/models/photo_model.dart';
import 'package:flutter_inflearn_clean_architecture_basic/domain/repository/photo_api_repository.dart';
import 'package:flutter_inflearn_clean_architecture_basic/domain/use_case/get_photos_use_case.dart';

import 'package:flutter_inflearn_clean_architecture_basic/presentation/home/home_screen_view_model.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Stream Test', () async {
    final viewModel =
        HomeScreenViewModel(GetPhotosUseCase(FakePhotoApiRepository()));

    await viewModel.fetch('apple');
    await viewModel.fetch('car');

    final List<Photo> result = fakeJson.map((e) => Photo.fromJson(e)).toList();

    expect(viewModel.homeState.photos, result);
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<Result<List<Photo>>> fetch(String query) async {
    try {
      Future.delayed(const Duration(milliseconds: 500));
      return Result.success(fakeJson.map((e) => Photo.fromJson(e)).toList());
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 1122537,
    "pageURL":
        "https://pixabay.com/photos/apple-water-droplets-fruit-moist-1122537/",
    "type": "photo",
    "tags": "apple, water droplets, fruit",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537_150.jpg",
    "previewWidth": 150,
    "previewHeight": 95,
    "webformatURL":
        "https://pixabay.com/get/g95360551d14589fca7080ffab03b0ff53d61d58d089069198ae9fd53a819fc9bdecf6557148bfdba68f3159c849e2e7e805d617f68a57a70ee665ef8ff3603c0_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 409,
    "largeImageURL":
        "https://pixabay.com/get/g2396bed6262f4412c60871f1950d8f9ff5a07e6f6cf9949228ac7e34607e423ef6567b9b95ad44e10f8a4fbf323b0a2136ff265abf581e4506e17cd93775f94b_1280.jpg",
    "imageWidth": 4752,
    "imageHeight": 3044,
    "imageSize": 5213632,
    "views": 328706,
    "downloads": 190537,
    "collections": 1034,
    "likes": 1152,
    "comments": 187,
    "user_id": 1445608,
    "user": "mploscar",
    "userImageURL":
        "https://cdn.pixabay.com/user/2016/01/05/14-08-20-943_250x250.jpg"
  },
  {
    "id": 256261,
    "pageURL":
        "https://pixabay.com/photos/apple-books-still-life-fruit-food-256261/",
    "type": "photo",
    "tags": "apple, books, still life",
    "previewURL":
        "https://cdn.pixabay.com/photo/2014/02/01/17/28/apple-256261_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g8a881a824791b810d1b07a9a11730ae9da7ed1037896b107b61de20f21c9172629dff10a9a37ae9c1c401a317ab7ddab_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 423,
    "largeImageURL":
        "https://pixabay.com/get/gc5f3d17650ab64e7bbf709112584046ec9a0088f79333e9e95109eab91819bafee10fc169783d7108b5d22020ed49e2de472d43709e10c6f7037e05393999dca_1280.jpg",
    "imageWidth": 4928,
    "imageHeight": 3264,
    "imageSize": 2987083,
    "views": 515215,
    "downloads": 267386,
    "collections": 947,
    "likes": 970,
    "comments": 245,
    "user_id": 143740,
    "user": "jarmoluk",
    "userImageURL":
        "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"
  },
];
