import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_app/core/ui/colors.dart';
import 'package:note_app/domain/model/note.dart';

import 'package:note_app/domain/use_case/note_use_case.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_event.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_ui_event.dart';

class AddEditNoteViewModel extends ChangeNotifier {
  final NoteUseCase noteUseCase;
  AddEditNoteViewModel(this.noteUseCase);

  int _color = roseBad.value;
  int get color => _color;

  final _eventController = StreamController<AddEditNoteUiEvent>.broadcast();
  Stream<AddEditNoteUiEvent> get eventStream => _eventController.stream;

  onEvent(AddEditNoteEvent event) {
    event.when(
      changeColor: (color) => _changeColor(color),
      saveNote: (id, title, content) => _saveNote(id, title, content),
    );
  }

  Future<void> _changeColor(int color) async {
    _color = color;
    notifyListeners();
  }

  Future<void> _saveNote(int? id, String title, String content) async {
    if (title.isEmpty || content.isEmpty) {
      _eventController
          .add(const AddEditNoteUiEvent.showSnackbar('제목 또는 내용이 비어 있습니다.'));
      return;
    }

    if (id == null) {
      await noteUseCase.addNote(
        Note(
          title: title,
          content: content,
          color: _color,
          timestamp: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    } else {
      await noteUseCase.updateNote(
        Note(
          id: id,
          title: title,
          content: content,
          color: _color,
          timestamp: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    }
    _eventController.add(const AddEditNoteUiEvent.saveNote());
  }
}
