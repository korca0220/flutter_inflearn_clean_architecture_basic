import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/util/note_order.dart';

part 'note_event.freezed.dart';

@freezed
abstract class NoteEvent with _$NoteEvent {
  const factory NoteEvent.loadNotes() = LoadNotes;
  const factory NoteEvent.deleteNote(Note note) = DeleteNote;
  const factory NoteEvent.restoreNote() = RestoreNote;
  const factory NoteEvent.changeOrder(NoteOrder noteOrder) = ChangeOrder;
}
