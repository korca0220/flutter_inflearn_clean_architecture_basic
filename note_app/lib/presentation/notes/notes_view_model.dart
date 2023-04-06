import 'package:flutter/material.dart';
import 'package:note_app/domain/model/note.dart';

import 'package:note_app/domain/use_case/note_use_case.dart';
import 'package:note_app/domain/util/note_order.dart';
import 'package:note_app/domain/util/order_type.dart';
import 'package:note_app/presentation/notes/note_event.dart';
import 'package:note_app/presentation/notes/note_state.dart';

class NotesViewModel extends ChangeNotifier {
  final NoteUseCase noteUseCase;

  NotesViewModel(this.noteUseCase) {
    _loadNotes();
  }
  NoteState _state = NoteState(
    notes: [],
    noteOrder: const NoteOrder.date(OrderType.descending()),
  );
  NoteState get state => _state;

  Note? _recentlyDeleteNote;

  void onEvent(NoteEvent event) {
    event.when(
      loadNotes: _loadNotes,
      deleteNote: (note) => _deleteNote(note),
      restoreNote: _restoreNote,
      changeOrder: (noteOrder) {
        _state = state.copyWith(noteOrder: noteOrder);
        _loadNotes();
      },
    );
  }

  Future<void> _loadNotes() async {
    final result = await noteUseCase.getNotes(state.noteOrder);
    _state = _state.copyWith(notes: result);
    notifyListeners();
  }

  Future<void> _deleteNote(Note note) async {
    await noteUseCase.removeNote(note);
    _recentlyDeleteNote = note;
    await _loadNotes();
  }

  Future<void> _restoreNote() async {
    if (_recentlyDeleteNote != null) {
      await noteUseCase.addNote(_recentlyDeleteNote!);
      await _loadNotes();
    }
  }
}
