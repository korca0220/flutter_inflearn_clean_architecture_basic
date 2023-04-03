import 'package:flutter/material.dart';
import 'package:flutter_inflearn_clean_architecture_basic/data/pixabay_api.dart';
import 'package:flutter_inflearn_clean_architecture_basic/models/photo_model.dart';

class PhotoWidget extends StatelessWidget {
  final Photo photo;

  const PhotoWidget({
    Key? key,
    required this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(photo.previewUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
