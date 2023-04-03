import 'package:flutter_inflearn_clean_architecture_basic/data/pixabay_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import 'pixabay_api_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  test('PixabayApi Data Test', () async {
    const baseUrl = "https://pixabay.com/api/";
    const key = "35017077-95d0aae89ecfa8fc1123ed7f7";

    final api = PixabayApi();
    final client = MockClient();
    when(client.get(Uri.parse("$baseUrl?key=$key&q=apple&image_type=photo")))
        .thenAnswer((_) async => http.Response(fakeJsonBody, 200));
    ;

    final result = await api.fetch('apple', client: client);

    expect(result.first.id, 1122537);

    verify(client.get(Uri.parse("$baseUrl?key=$key&q=apple&image_type=photo")));
  });
}

String fakeJsonBody = """{
    "total": 10519,
    "totalHits": 500,
    "hits": [
        {
            "id": 1122537,
            "pageURL": "https://pixabay.com/photos/apple-water-droplets-fruit-moist-1122537/",
            "type": "photo",
            "tags": "apple, water droplets, fruit",
            "previewURL": "https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537_150.jpg",
            "previewWidth": 150,
            "previewHeight": 95,
            "webformatURL": "https://pixabay.com/get/g95360551d14589fca7080ffab03b0ff53d61d58d089069198ae9fd53a819fc9bdecf6557148bfdba68f3159c849e2e7e805d617f68a57a70ee665ef8ff3603c0_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 409,
            "largeImageURL": "https://pixabay.com/get/g2396bed6262f4412c60871f1950d8f9ff5a07e6f6cf9949228ac7e34607e423ef6567b9b95ad44e10f8a4fbf323b0a2136ff265abf581e4506e17cd93775f94b_1280.jpg",
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
            "userImageURL": "https://cdn.pixabay.com/user/2016/01/05/14-08-20-943_250x250.jpg"
        },
        {
            "id": 256261,
            "pageURL": "https://pixabay.com/photos/apple-books-still-life-fruit-food-256261/",
            "type": "photo",
            "tags": "apple, books, still life",
            "previewURL": "https://cdn.pixabay.com/photo/2014/02/01/17/28/apple-256261_150.jpg",
            "previewWidth": 150,
            "previewHeight": 99,
            "webformatURL": "https://pixabay.com/get/g8a881a824791b810d1b07a9a11730ae9da7ed1037896b107b61de20f21c9172629dff10a9a37ae9c1c401a317ab7ddab_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 423,
            "largeImageURL": "https://pixabay.com/get/gc5f3d17650ab64e7bbf709112584046ec9a0088f79333e9e95109eab91819bafee10fc169783d7108b5d22020ed49e2de472d43709e10c6f7037e05393999dca_1280.jpg",
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
            "userImageURL": "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"
        },
        {
            "id": 1868496,
            "pageURL": "https://pixabay.com/photos/apple-computer-desk-workspace-1868496/",
            "type": "photo",
            "tags": "apple, computer, desk",
            "previewURL": "https://cdn.pixabay.com/photo/2016/11/29/08/41/apple-1868496_150.jpg",
            "previewWidth": 150,
            "previewHeight": 99,
            "webformatURL": "https://pixabay.com/get/gb40dd468786564589354dc014b52e6b02333759a96942147b33fa33fb00fc21134553d9e153e645982aa6dfd59eb3c6032671d4a6aa2373965edce51a0feba51_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 426,
            "largeImageURL": "https://pixabay.com/get/g2f52e0f0e7adcefa6d3f762df3407888cdb40e68e523a711ac51a649a02fbd6d7b01bacad0300066d7b100aca5fa7f56d74797fe46d6795e3581b768150e383b_1280.jpg",
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
            "userImageURL": "https://cdn.pixabay.com/user/2016/03/26/22-06-36-459_250x250.jpg"
        },
        {
            "id": 634572,
            "pageURL": "https://pixabay.com/photos/apples-fruits-red-ripe-vitamins-634572/",
            "type": "photo",
            "tags": "apples, fruits, red",
            "previewURL": "https://cdn.pixabay.com/photo/2015/02/13/00/43/apples-634572_150.jpg",
            "previewWidth": 100,
            "previewHeight": 150,
            "webformatURL": "https://pixabay.com/get/g8441c3d42b36eb60da9a6670166411d92d0273572e39d194968a2f759cc2f9e15f6b51b58da4cb5a1914c94522b1f55c_640.jpg",
            "webformatWidth": 427,
            "webformatHeight": 640,
            "largeImageURL": "https://pixabay.com/get/g622acc5da3e22025cddba4b7fd49aeef1b272aaac3e51d0e26d754c2b288c2fc9732b5cb0bbb8ede44daae07e2a15c31f39ed92235070ca38f8a446c3602fb76_1280.jpg",
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
            "userImageURL": "https://cdn.pixabay.com/user/2016/03/14/13-25-18-933_250x250.jpg"
        },
        {
            "id": 1873078,
            "pageURL": "https://pixabay.com/photos/apples-orchard-apple-trees-1873078/",
            "type": "photo",
            "tags": "apples, orchard, apple trees",
            "previewURL": "https://cdn.pixabay.com/photo/2016/11/30/15/23/apples-1873078_150.jpg",
            "previewWidth": 150,
            "previewHeight": 95,
            "webformatURL": "https://pixabay.com/get/gdaeb3a812812580b5ae6771b4655e4cfbdaf16263447d360b9fd0d0c4410d8139e1245740672d490c8af2c5723f3aa26042fa5c2918f63416ac6883a80445827_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 408,
            "largeImageURL": "https://pixabay.com/get/g453761aec2c944860216529c932267c9baef8c78d32a3fa921b5628b06939be2f0c901f50a2c0020896b1937d8c35655f0a42a7d394b48fde941c620e74b3b51_1280.jpg",
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
        {
            "id": 2788599,
            "pageURL": "https://pixabay.com/photos/apples-red-apple-ripe-apple-orchard-2788599/",
            "type": "photo",
            "tags": "apples, red apple, ripe",
            "previewURL": "https://cdn.pixabay.com/photo/2017/09/26/13/21/apples-2788599_150.jpg",
            "previewWidth": 150,
            "previewHeight": 99,
            "webformatURL": "https://pixabay.com/get/g033571eb6ab6f8ef0edae99f8e365be76c23150636c925d0ff03e336a0c701bcbdc9c5b25c480df87df8f00f2b8632196fb0533b5284712c105fa8e4f76b6b09_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 426,
            "largeImageURL": "https://pixabay.com/get/gff803e8fc9fc3730472cee4352561a2b1ac45cf462e4adc0539e59021f2800e46232e89470197d793f4dd89818cc9a17b071ba9f6316067ccb54c7d4b8076038_1280.jpg",
            "imageWidth": 6000,
            "imageHeight": 4000,
            "imageSize": 3660484,
            "views": 137497,
            "downloads": 73724,
            "collections": 547,
            "likes": 612,
            "comments": 67,
            "user_id": 2364555,
            "user": "NoName_13",
            "userImageURL": "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
        },
        {
            "id": 256263,
            "pageURL": "https://pixabay.com/photos/apple-books-classroom-red-apple-256263/",
            "type": "photo",
            "tags": "apple, books, classroom",
            "previewURL": "https://cdn.pixabay.com/photo/2014/02/01/17/28/apple-256263_150.jpg",
            "previewWidth": 150,
            "previewHeight": 99,
            "webformatURL": "https://pixabay.com/get/gf56d7f98213fc0e33cafacccbe8a65cad80b10decaa0be5bc15a4cf29b6b3be9419fb165a57beefb54e3caaefb12fac4_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 423,
            "largeImageURL": "https://pixabay.com/get/g067c0fa390e9d570f08e333aab5ef3b985508095cb3a1943d1c762497b71b862b2cb728de54e143054e5ad9eb016f4d795a54c1cd7637606f7396fde9bfd7c33_1280.jpg",
            "imageWidth": 4928,
            "imageHeight": 3264,
            "imageSize": 2864273,
            "views": 240978,
            "downloads": 128298,
            "collections": 572,
            "likes": 513,
            "comments": 104,
            "user_id": 143740,
            "user": "jarmoluk",
            "userImageURL": "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"
        },
        {
            "id": 2788662,
            "pageURL": "https://pixabay.com/photos/apple-red-hand-apple-plantation-2788662/",
            "type": "photo",
            "tags": "apple, red, hand",
            "previewURL": "https://cdn.pixabay.com/photo/2017/09/26/13/42/apple-2788662_150.jpg",
            "previewWidth": 150,
            "previewHeight": 88,
            "webformatURL": "https://pixabay.com/get/g17cef0146d848ccee1f7afe1a69f67f363450feb9d492dccf84cac144b242a492ba320943b521e319659917e7871ae3d525b8fe5351f997d8317417a098d9565_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 377,
            "largeImageURL": "https://pixabay.com/get/g3ba10ecbc1ded7ee23b77eb03324d14a89c631afe5466355ac224d087a8f6cdf3e23a0af3fe9c9b3c7e1803a99ccc41d79863ac8b83d17238c81d7058980bf07_1280.jpg",
            "imageWidth": 6000,
            "imageHeight": 3539,
            "imageSize": 2042422,
            "views": 171827,
            "downloads": 100435,
            "collections": 588,
            "likes": 604,
            "comments": 88,
            "user_id": 2364555,
            "user": "NoName_13",
            "userImageURL": "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
        },
        {
            "id": 606761,
            "pageURL": "https://pixabay.com/photos/apple-imac-ipad-workplace-606761/",
            "type": "photo",
            "tags": "apple, imac, ipad",
            "previewURL": "https://cdn.pixabay.com/photo/2015/01/21/14/14/apple-606761_150.jpg",
            "previewWidth": 150,
            "previewHeight": 99,
            "webformatURL": "https://pixabay.com/get/g3ebe7a0b515060f8ec50afc7f021cdffc796ffa38a783ec005728d320ebf14a232c7d1451a7f0960e5ac30afc287521a_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 425,
            "largeImageURL": "https://pixabay.com/get/gc5b178b6b2718124e681b73522746a4f3cdc549492f3a9cc1ccbe3ce9c98216aab9932e22e5d3e5d30bf76a84cc07525c4987a5b79469f1dcde2ba7af7b867fd_1280.jpg",
            "imageWidth": 4209,
            "imageHeight": 2796,
            "imageSize": 1649126,
            "views": 428378,
            "downloads": 236471,
            "collections": 673,
            "likes": 499,
            "comments": 116,
            "user_id": 663163,
            "user": "Firmbee",
            "userImageURL": "https://cdn.pixabay.com/user/2020/11/25/09-38-28-431_250x250.png"
        },
        {
            "id": 2788651,
            "pageURL": "https://pixabay.com/photos/apples-apple-tree-fruits-orchard-2788651/",
            "type": "photo",
            "tags": "apples, apple tree, fruits",
            "previewURL": "https://cdn.pixabay.com/photo/2017/09/26/13/39/apples-2788651_150.jpg",
            "previewWidth": 150,
            "previewHeight": 77,
            "webformatURL": "https://pixabay.com/get/g5d72bd74e934fe8c648371cde1603983449a20beb07129914157ccd8b905ffe269d4d35c38423a5389015915b91cf3278582050be2041f665de511bf99433943_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 330,
            "largeImageURL": "https://pixabay.com/get/ged672752802732fd18723de142f998c74260a0e0efdbd10c05eef21e558bfc2e6fbdd1132a83288d43bb51af4903d6349db237a9d5a96b2b2db1214f12175201_1280.jpg",
            "imageWidth": 6000,
            "imageHeight": 3103,
            "imageSize": 2518838,
            "views": 75869,
            "downloads": 46583,
            "collections": 459,
            "likes": 457,
            "comments": 52,
            "user_id": 2364555,
            "user": "NoName_13",
            "userImageURL": "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
        },
        {
            "id": 1368187,
            "pageURL": "https://pixabay.com/photos/apple-blossom-flowers-tree-1368187/",
            "type": "photo",
            "tags": "apple blossom, flowers, tree",
            "previewURL": "https://cdn.pixabay.com/photo/2016/05/02/22/16/apple-blossom-1368187_150.jpg",
            "previewWidth": 150,
            "previewHeight": 88,
            "webformatURL": "https://pixabay.com/get/g3d1c04bee7286ee7473353017e467b0e97dd2d7b489abf3530850824234d08091cb244966f1a2dc62673957e7bf1eaa6838131df56b00a36f66143dde5df5c45_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 379,
            "largeImageURL": "https://pixabay.com/get/gb11312e13f1ce860838c6b0af6c22ff764619a31eb23a66d43ed2c8a4b9b80b3bd470d2c411f578e3e67f7faeeb0772292e6c6124988c1e7a6b77dafd10b0162_1280.jpg",
            "imageWidth": 3966,
            "imageHeight": 2352,
            "imageSize": 860935,
            "views": 240660,
            "downloads": 144963,
            "collections": 636,
            "likes": 753,
            "comments": 131,
            "user_id": 2367988,
            "user": "kie-ker",
            "userImageURL": ""
        },
        {
            "id": 2788616,
            "pageURL": "https://pixabay.com/photos/apple-red-red-apple-2788616/",
            "type": "photo",
            "tags": "apple, red, red apple",
            "previewURL": "https://cdn.pixabay.com/photo/2017/09/26/13/31/apple-2788616_150.jpg",
            "previewWidth": 150,
            "previewHeight": 90,
            "webformatURL": "https://pixabay.com/get/g110d016f1c17f861979cbe8a7782a63a0b95ac1b70bfdc8c48644bf4e7bf94fe33285fd6fa3e233e7c650b5132f375ff5b7b9b984da501031328b70bf11f4870_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 384,
            "largeImageURL": "https://pixabay.com/get/gcf2f3ce7dad3ae9fac6844555c1368187361eedb66a4a6319c30258ff138add0f0bb59f18fab4db1e07a5a4e4d4d3aa479a9b43ab8f51a914970213970a3973b_1280.jpg",
            "imageWidth": 6000,
            "imageHeight": 3601,
            "imageSize": 2758033,
            "views": 118042,
            "downloads": 66425,
            "collections": 401,
            "likes": 470,
            "comments": 38,
            "user_id": 2364555,
            "user": "NoName_13",
            "userImageURL": "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
        },
        {
            "id": 1475977,
            "pageURL": "https://pixabay.com/illustrations/apple-the-fruit-green-formidable-1475977/",
            "type": "illustration",
            "tags": "apple, the fruit, green",
            "previewURL": "https://cdn.pixabay.com/photo/2016/06/23/18/55/apple-1475977_150.png",
            "previewWidth": 150,
            "previewHeight": 132,
            "webformatURL": "https://pixabay.com/get/g85ec968c1fea6f37de24256ecf9d09aaa97de8099360c3419e0090b1bd7f7491004ee4156417828e52242e25448749bd998801d55671ffa9e97951a1e89bb8d6_640.png",
            "webformatWidth": 640,
            "webformatHeight": 566,
            "largeImageURL": "https://pixabay.com/get/ga37ea90722b8fab7e302f362db3a751b79d48365f93112869c607d0ddfb97318df8e574159019c5dd981e3656deab0cc8c07c4f79face6fdd90255fb49a3dcf4_1280.png",
            "imageWidth": 1920,
            "imageHeight": 1700,
            "imageSize": 197653,
            "views": 114846,
            "downloads": 83538,
            "collections": 573,
            "likes": 141,
            "comments": 21,
            "user_id": 2567670,
            "user": "creozavr",
            "userImageURL": "https://cdn.pixabay.com/user/2020/07/15/05-38-22-838_250x250.jpg"
        },
        {
            "id": 1702316,
            "pageURL": "https://pixabay.com/photos/apple-red-fruit-red-chief-1702316/",
            "type": "photo",
            "tags": "apple, red, fruit",
            "previewURL": "https://cdn.pixabay.com/photo/2016/09/29/08/33/apple-1702316_150.jpg",
            "previewWidth": 150,
            "previewHeight": 116,
            "webformatURL": "https://pixabay.com/get/g58f3a9fe02a0fa46fbb88a7749aed3fb1e27805f83504d54ab7f1f3c83647f0b75c113d84409e635cb72ceaf3bd8b0255c6256686343cefc73d71d2d18f57552_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 495,
            "largeImageURL": "https://pixabay.com/get/gf0d53696b4009553aa48a3b08df651ff6114db724627105c00c6edf6c1fe9283761f3fba98c26502e42d30589642381e34e87a048dbf84cd65a55d1dd3af83d4_1280.jpg",
            "imageWidth": 4000,
            "imageHeight": 3099,
            "imageSize": 1930833,
            "views": 144898,
            "downloads": 93730,
            "collections": 335,
            "likes": 356,
            "comments": 32,
            "user_id": 2364555,
            "user": "NoName_13",
            "userImageURL": "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
        },
        {
            "id": 805124,
            "pageURL": "https://pixabay.com/photos/apples-basket-fruits-apple-basket-805124/",
            "type": "photo",
            "tags": "apples, basket, fruits",
            "previewURL": "https://cdn.pixabay.com/photo/2015/06/10/19/56/apples-805124_150.jpg",
            "previewWidth": 150,
            "previewHeight": 129,
            "webformatURL": "https://pixabay.com/get/ge1d7eb39f1f45ea6598c6a7af2ff22f876c149813202cfa223a2ccd66a2c108c838b002372ab03790374ad5027b4a856_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 553,
            "largeImageURL": "https://pixabay.com/get/gdd752b91d767419f4395d8cf7293f418af27953b701231dacf0467160d4f869442dc74141470d4519b160b63acffaf20a9a879f5903a75be33a669b617834eba_1280.jpg",
            "imageWidth": 3101,
            "imageHeight": 2683,
            "imageSize": 998659,
            "views": 148107,
            "downloads": 85958,
            "collections": 465,
            "likes": 476,
            "comments": 94,
            "user_id": 1107275,
            "user": "Larisa-K",
            "userImageURL": "https://cdn.pixabay.com/user/2015/06/13/06-38-56-116_250x250.jpg"
        },
        {
            "id": 2391,
            "pageURL": "https://pixabay.com/photos/apple-diet-female-food-fresh-2391/",
            "type": "photo",
            "tags": "apple, diet, female",
            "previewURL": "https://cdn.pixabay.com/photo/2010/12/13/10/09/apple-2391_150.jpg",
            "previewWidth": 150,
            "previewHeight": 99,
            "webformatURL": "https://pixabay.com/get/g8ae2e598355ce84f18079e28455d6b60768531ac03f7d67ef33fd11dc9eeca4f9c7131ec35b6819b050690f1baae6537_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 426,
            "largeImageURL": "https://pixabay.com/get/g7024951ef26d98a7af0822f09bcad9773cb5021e6679a11b30867bf18e6569c9c5a7f9a121945c63fe071a6a87674154_1280.jpg",
            "imageWidth": 4752,
            "imageHeight": 3168,
            "imageSize": 752002,
            "views": 122828,
            "downloads": 75344,
            "collections": 354,
            "likes": 284,
            "comments": 39,
            "user_id": 14,
            "user": "PublicDomainPictures",
            "userImageURL": "https://cdn.pixabay.com/user/2012/03/08/00-13-48-597_250x250.jpg"
        },
        {
            "id": 1872997,
            "pageURL": "https://pixabay.com/photos/apples-fruits-orchard-nature-trees-1872997/",
            "type": "photo",
            "tags": "apples, fruits, orchard",
            "previewURL": "https://cdn.pixabay.com/photo/2016/11/30/15/00/apples-1872997_150.jpg",
            "previewWidth": 150,
            "previewHeight": 99,
            "webformatURL": "https://pixabay.com/get/gff6a26dbe8cd370494748faa4c0ab157fd70bcc3faeee6b0096e475236903c20ab4d6baacfffb498a362233793c04dd66e2d442bdb1ed4b3b8132c203bab64dc_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 426,
            "largeImageURL": "https://pixabay.com/get/gfc5a3c2646b697536e1c176dea6b3e62c76b235ab7e07032d9f64edba7c6b14d7d81e4ecc25ab84e8e22a9a2c26276908d644a5ee433dd0f70695f33072c2daa_1280.jpg",
            "imageWidth": 3504,
            "imageHeight": 2336,
            "imageSize": 2019234,
            "views": 202468,
            "downloads": 126210,
            "collections": 624,
            "likes": 631,
            "comments": 90,
            "user_id": 3890388,
            "user": "lumix2004",
            "userImageURL": ""
        },
        {
            "id": 569153,
            "pageURL": "https://pixabay.com/photos/home-office-notebook-home-couch-569153/",
            "type": "photo",
            "tags": "home office, notebook, home",
            "previewURL": "https://cdn.pixabay.com/photo/2014/12/15/14/05/home-office-569153_150.jpg",
            "previewWidth": 150,
            "previewHeight": 99,
            "webformatURL": "https://pixabay.com/get/gb5a2291a7fe913e1ce3324e7cb53b353da1c92092f0624a0a2d35fee80d192eb2d2ba0869126a732f8827ee674941a47_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 426,
            "largeImageURL": "https://pixabay.com/get/g262ec1869ea4eadc0b41559580147d6e3880c2ff007e0a3c9830a803b7a9a3fdfd4a6e2cba041911f642bae324b8aee9b6b8e42ede527c07f0c17e87ef500273_1280.jpg",
            "imageWidth": 5760,
            "imageHeight": 3840,
            "imageSize": 3991496,
            "views": 336504,
            "downloads": 181058,
            "collections": 665,
            "likes": 475,
            "comments": 90,
            "user_id": 364018,
            "user": "Life-Of-Pix",
            "userImageURL": "https://cdn.pixabay.com/user/2014/08/21/23-01-42-554_250x250.jpg"
        },
        {
            "id": 256268,
            "pageURL": "https://pixabay.com/photos/apple-red-delicious-fruit-vitamins-256268/",
            "type": "photo",
            "tags": "apple, red, delicious",
            "previewURL": "https://cdn.pixabay.com/photo/2014/02/01/17/30/apple-256268_150.jpg",
            "previewWidth": 150,
            "previewHeight": 99,
            "webformatURL": "https://pixabay.com/get/gb35915ffb6e7c65c595c2c4849eeb46307ffbd7e9e0fb81a5eb556c195c2fd55abf72444ad1525ac0adc02ebcd1f9ecf_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 423,
            "largeImageURL": "https://pixabay.com/get/g8cdaebe729225d52cce7784d124a95bc08968bb02d1e8ff9f98e0b5902db11b7537da71969af6c3e36348b2b21eb1835b21c42a0caf49297d1fd72d9ab047ee7_1280.jpg",
            "imageWidth": 4928,
            "imageHeight": 3264,
            "imageSize": 2942037,
            "views": 82016,
            "downloads": 38148,
            "collections": 292,
            "likes": 255,
            "comments": 40,
            "user_id": 143740,
            "user": "jarmoluk",
            "userImageURL": "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"
        },
        {
            "id": 1302430,
            "pageURL": "https://pixabay.com/illustrations/apple-glass-fruit-transparent-1302430/",
            "type": "illustration",
            "tags": "apple, glass, fruit",
            "previewURL": "https://cdn.pixabay.com/photo/2016/04/02/09/43/apple-1302430_150.jpg",
            "previewWidth": 150,
            "previewHeight": 84,
            "webformatURL": "https://pixabay.com/get/gba6af5910c4713921fe3eac27956d425a85efa68a38ca3b54e3f2d4bae0baead925552ed1f695d552af3aa0cbcc8594748f6078b20c73aa7b050288cb58d6543_640.jpg",
            "webformatWidth": 640,
            "webformatHeight": 360,
            "largeImageURL": "https://pixabay.com/get/g659fe53f9e1e45884ad2f00478d72e8bff4a4aa6c4b7fbd41d3e5e917c7d26af6f09afe31980cd4364baa56acebf28518129f2fdc0fad6cee61b691e1765aeb0_1280.jpg",
            "imageWidth": 3840,
            "imageHeight": 2160,
            "imageSize": 546258,
            "views": 160374,
            "downloads": 42100,
            "collections": 226,
            "likes": 324,
            "comments": 50,
            "user_id": 346653,
            "user": "ColiN00B",
            "userImageURL": "https://cdn.pixabay.com/user/2021/06/11/11-31-51-434_250x250.jpg"
        }
    ]
}""";
