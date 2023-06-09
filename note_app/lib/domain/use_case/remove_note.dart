import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class RemoveNote {
  final NoteRepository repository;
  RemoveNote(this.repository);

  Future<void> call(Note note) async {
    await repository.deleteNote(note);
  }
}
