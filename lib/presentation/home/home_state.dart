import 'package:flutter_inflearn_clean_architecture_basic/domain/models/photo_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required List<Photo> photos,
  }) = _HomeState;
}
