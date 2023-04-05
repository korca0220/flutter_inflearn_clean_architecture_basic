

import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class NoteRepositoryImpl implements NoteRepository{
  @override
  Future<void> deleteNote(Note note) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<void> editNote(Note note) {
    // TODO: implement editNote
    throw UnimplementedError();
  }

  @override
  Future<Note> getNoteById(int id) {
    // TODO: implement getNoteById
    throw UnimplementedError();
  }

  @override
  Future<List<Note>> getNotes() {
    // TODO: implement getNotes
    throw UnimplementedError();
  }

  @override
  Future<void> insertNote(Note note) {
    // TODO: implement insertNote
    throw UnimplementedError();
  }

}