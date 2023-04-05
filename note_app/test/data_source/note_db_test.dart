import 'package:flutter_test/flutter_test.dart';
import 'package:note_app/data/data_source/note_db_helper.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  test('Note DB Test', () async {
    final db = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);

    await db.execute(
        'CREATE TABLE note (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT, color INTEGER, timestamp INTEGER)');

    final noteDBHelper = NoteDBHelper(db);
    await noteDBHelper.insertNote(Note(
      title: 'test',
      content: 'test',
      color: 1,
      timestamp: 1,
    ));

    expect((await noteDBHelper.getNotes()).length, 1);

    Note? note = (await noteDBHelper.getNoteById(1));
    expect(note!.id, 1);

    await noteDBHelper.updateNote(note!.copyWith(title: 'testtest'));
    note = (await noteDBHelper.getNoteById(1));
    expect(note!.title, 'testtest');

    await noteDBHelper.deleteNote(note);
    expect((await noteDBHelper.getNotes()).length, 0);

    await db.close();
  });
}
