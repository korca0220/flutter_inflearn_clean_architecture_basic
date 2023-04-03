import 'package:flutter/material.dart';
import 'package:flutter_inflearn_clean_architecture_basic/data/api.dart';
import 'package:flutter_inflearn_clean_architecture_basic/models/photo_model.dart';
import 'package:flutter_inflearn_clean_architecture_basic/ui/widgets/photo_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 의존성이 생긴상태
  // API가 없으면 동작하지 않는 UI
  final api = PixabayApi();
  final textController = TextEditingController();
  List<Photo> _photos = [];

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '이미지 검색 앱',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                suffixIcon: IconButton(
                  onPressed: () async {
                    final photos = await api.fetch(textController.text);
                    setState(() {
                      _photos = photos;
                    });
                  },
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: _photos.length,
              itemBuilder: (context, index) {
                final photo = _photos[index];
                return PhotoWidget(
                  photo: photo,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}