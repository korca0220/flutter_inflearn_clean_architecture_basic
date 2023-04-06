import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/util/note_order.dart';

part 'note_state.freezed.dart';

@freezed
class NoteState with _$NoteState {
  factory NoteState({
    required List<Note> notes,
    required NoteOrder noteOrder,
  }) = _NoteState;
}
