import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class GetNotes {
  final NoteRepository repository;
  GetNotes(this.repository);

  Future<List<Note>> call() async {
    final result = await repository.getNotes();
    result.sort((a, b) => -a.timestamp.compareTo(b.timestamp));

    return result;
  }
}
