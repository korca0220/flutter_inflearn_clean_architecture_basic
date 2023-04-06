import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/util/note_order.dart';

class GetNotes {
  final NoteRepository repository;
  GetNotes(this.repository);

  Future<List<Note>> call(NoteOrder noteOrder) async {
    final result = await repository.getNotes();
    noteOrder.when(
      title: (orderType) {
        orderType.when(
          ascending: () {
            result.sort((a, b) => a.title.compareTo(b.title));
          },
          descending: () {
            result.sort((a, b) => -a.title.compareTo(b.title));
          },
        );
      },
      date: (orderType) {
        orderType.when(
          ascending: () {
            result.sort((a, b) => a.timestamp.compareTo(b.timestamp));
          },
          descending: () {
            result.sort((a, b) => -a.timestamp.compareTo(b.timestamp));
          },
        );
      },
      color: (orderType) {
        orderType.when(
          ascending: () {
            result.sort((a, b) => a.color.compareTo(b.color));
          },
          descending: () {
            result.sort((a, b) => -a.color.compareTo(b.color));
          },
        );
      },
    );

    return result;
  }
}
