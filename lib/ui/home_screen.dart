import 'package:flutter/material.dart';
import 'package:flutter_inflearn_clean_architecture_basic/models/photo_model.dart';
import 'package:flutter_inflearn_clean_architecture_basic/ui/home_screen_view_model.dart';
import 'package:flutter_inflearn_clean_architecture_basic/ui/widgets/photo_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeScreenViewModel>();

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
                    viewModel.fetch(textController.text);
                  },
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
              ),
            ),
          ),
          StreamBuilder<List<Photo>>(
              stream: viewModel.photoStream,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                }
                final photos = snapshot.data!;
                return Expanded(
                  child: GridView.builder(
                    physics: const ClampingScrollPhysics(),
                    padding: const EdgeInsets.all(16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: photos.length,
                    itemBuilder: (context, index) {
                      final photo = photos[index];
                      return PhotoWidget(
                        photo: photo,
                      );
                    },
                  ),
                );
              }),
        ],
      ),
    );
  }
}
