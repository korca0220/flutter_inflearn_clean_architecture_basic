import 'package:note_app/domain/model/note.dart';
import 'package:sqflite/sqflite.dart';

class NoteDBHelper {
  Database db;
  NoteDBHelper(this.db);

  Future<Note?> getNoteById(int id) async {
    // SELECT = FROM note WHERE id = ?
    final result = await db.query(
      'note',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (result.isNotEmpty) {
      return Note.fromJson(result.first);
    } else {
      return null;
    }
  }

  Future<List<Note>> getNotes() async {
    final result = await db.query('note');
    return result.map((e) => Note.fromJson(e)).toList();
  }

  Future<void> insertNote(Note note) async {
    await db.insert('note', note.toJson());
  }

  Future<void> updateNote(Note note) async {
    await db.update(
      'note',
      note.toJson(),
      where: 'id =?',
      whereArgs: [note.id],
    );
  }

  Future<void> deleteNote(Note note) async {
    await db.delete('note', where: 'id = ?', whereArgs: [note.id]);
  }
}
