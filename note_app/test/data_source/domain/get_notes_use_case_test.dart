import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/use_case/get_notes.dart';
import 'package:note_app/domain/util/note_order.dart';
import 'package:note_app/domain/util/order_type.dart';

import 'get_notes_use_case_test.mocks.dart';

@GenerateMocks([NoteRepository])
void main() {
  test('정렬', () async {
    final repository = MockNoteRepository();
    final useCase = GetNotes(repository);

    when(repository.getNotes()).thenAnswer((realInvocation) async {
      return [
        Note(title: 'title1', content: 'content1', color: 1, timestamp: 0),
        Note(title: 'title2', content: 'content2', color: 2, timestamp: 2),
      ];
    });

    var result = await useCase(const NoteOrder.date(OrderType.descending()));

    expect(result, isA<List<Note>>());
    expect(result.first.timestamp, 2);

    result = await useCase(const NoteOrder.date(OrderType.ascending()));
    expect(result.first.timestamp, 0);
  });
}
