import 'package:flutter_inflearn_clean_architecture_basic/data/photo_api_repository.dart';
import 'package:flutter_inflearn_clean_architecture_basic/models/photo_model.dart';
import 'package:flutter_inflearn_clean_architecture_basic/ui/home_screen_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Stream Test', () async {
    final viewModel = HomeScreenViewModel(FakePhotoApiRepository());

    await viewModel.fetch('apple');
    await viewModel.fetch('car');

    final List<Photo> result = fakeJson.map((e) => Photo.fromJson(e)).toList();

    expect(viewModel.photos, result);
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<List<Photo>> fetch(String query) async {
    Future.delayed(const Duration(milliseconds: 500));
    return fakeJson.map((e) => Photo.fromJson(e)).toList();
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
  {
    "id": 1868496,
    "pageURL":
        "https://pixabay.com/photos/apple-computer-desk-workspace-1868496/",
    "type": "photo",
    "tags": "apple, computer, desk",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/11/29/08/41/apple-1868496_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gb40dd468786564589354dc014b52e6b02333759a96942147b33fa33fb00fc21134553d9e153e645982aa6dfd59eb3c6032671d4a6aa2373965edce51a0feba51_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g2f52e0f0e7adcefa6d3f762df3407888cdb40e68e523a711ac51a649a02fbd6d7b01bacad0300066d7b100aca5fa7f56d74797fe46d6795e3581b768150e383b_1280.jpg",
    "imageWidth": 5184,
    "imageHeight": 3456,
    "imageSize": 2735519,
    "views": 692899,
    "downloads": 504549,
    "collections": 1381,
    "likes": 1037,
    "comments": 275,
    "user_id": 2286921,
    "user": "Pexels",
    "userImageURL":
        "https://cdn.pixabay.com/user/2016/03/26/22-06-36-459_250x250.jpg"
  },
  {
    "id": 634572,
    "pageURL":
        "https://pixabay.com/photos/apples-fruits-red-ripe-vitamins-634572/",
    "type": "photo",
    "tags": "apples, fruits, red",
    "previewURL":
        "https://cdn.pixabay.com/photo/2015/02/13/00/43/apples-634572_150.jpg",
    "previewWidth": 100,
    "previewHeight": 150,
    "webformatURL":
        "https://pixabay.com/get/g8441c3d42b36eb60da9a6670166411d92d0273572e39d194968a2f759cc2f9e15f6b51b58da4cb5a1914c94522b1f55c_640.jpg",
    "webformatWidth": 427,
    "webformatHeight": 640,
    "largeImageURL":
        "https://pixabay.com/get/g622acc5da3e22025cddba4b7fd49aeef1b272aaac3e51d0e26d754c2b288c2fc9732b5cb0bbb8ede44daae07e2a15c31f39ed92235070ca38f8a446c3602fb76_1280.jpg",
    "imageWidth": 3345,
    "imageHeight": 5017,
    "imageSize": 811238,
    "views": 483335,
    "downloads": 284202,
    "collections": 1272,
    "likes": 2357,
    "comments": 195,
    "user_id": 752536,
    "user": "Desertrose7",
    "userImageURL":
        "https://cdn.pixabay.com/user/2016/03/14/13-25-18-933_250x250.jpg"
  },
  {
    "id": 1873078,
    "pageURL": "https://pixabay.com/photos/apples-orchard-apple-trees-1873078/",
    "type": "photo",
    "tags": "apples, orchard, apple trees",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/11/30/15/23/apples-1873078_150.jpg",
    "previewWidth": 150,
    "previewHeight": 95,
    "webformatURL":
        "https://pixabay.com/get/gdaeb3a812812580b5ae6771b4655e4cfbdaf16263447d360b9fd0d0c4410d8139e1245740672d490c8af2c5723f3aa26042fa5c2918f63416ac6883a80445827_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 408,
    "largeImageURL":
        "https://pixabay.com/get/g453761aec2c944860216529c932267c9baef8c78d32a3fa921b5628b06939be2f0c901f50a2c0020896b1937d8c35655f0a42a7d394b48fde941c620e74b3b51_1280.jpg",
    "imageWidth": 3212,
    "imageHeight": 2051,
    "imageSize": 2581012,
    "views": 444832,
    "downloads": 259850,
    "collections": 1136,
    "likes": 1146,
    "comments": 177,
    "user_id": 3890388,
    "user": "lumix2004",
    "userImageURL": ""
  },
];
