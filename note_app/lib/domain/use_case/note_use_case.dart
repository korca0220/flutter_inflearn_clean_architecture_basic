import 'package:note_app/domain/use_case/add_note.dart';
import 'package:note_app/domain/use_case/get_note.dart';
import 'package:note_app/domain/use_case/get_notes.dart';
import 'package:note_app/domain/use_case/remove_note.dart';
import 'package:note_app/domain/use_case/update_note.dart';

class NoteUseCase {
  final AddNote addNote;
  final RemoveNote removeNote;
  final GetNotes getNotes;
  final GetNote getNote;
  final UpdateNote updateNote;

  NoteUseCase({
    required this.addNote,
    required this.removeNote,
    required this.getNotes,
    required this.getNote,
    required this.updateNote,
  });
}
