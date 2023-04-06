import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/presentation/notes/note_event.dart';

class NotesViewModel extends ChangeNotifier {
  NoteRepository repository;

  NotesViewModel(this.repository);

  List<Note> _notes = [];
  UnmodifiableListView<Note> get notes => UnmodifiableListView(_notes);

  Note? _recentlyDeleteNote;

  void onEvent(NoteEvent event) {
    event.when(
      loadNotes: _loadNotes,
      deleteNote: (note) => _deleteNote(note),
      restoreNote: _restoreNote,
    );
  }

  Future<void> _loadNotes() async {
    final result = await repository.getNotes();
    _notes = result;
    notifyListeners();
  }

  Future<void> _deleteNote(Note note) async {
    await repository.deleteNote(note);
    _recentlyDeleteNote = note;
    await _loadNotes();
  }

  Future<void> _restoreNote() async {
    if (_recentlyDeleteNote != null) {
      await repository.insertNote(_recentlyDeleteNote!);
      await _loadNotes();
    }
  }
}
