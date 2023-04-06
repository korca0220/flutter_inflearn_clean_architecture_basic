import 'package:note_app/data/data_source/note_db_helper.dart';
import 'package:note_app/data/repository/note_repository_impl.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/use_case/add_note.dart';
import 'package:note_app/domain/use_case/get_note.dart';
import 'package:note_app/domain/use_case/get_notes.dart';
import 'package:note_app/domain/use_case/note_use_case.dart';
import 'package:note_app/domain/use_case/remove_note.dart';
import 'package:note_app/domain/use_case/update_note.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_view_model.dart';
import 'package:note_app/presentation/notes/notes_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';

Future<List<SingleChildWidget>> getProviders() async {
  Database database = await openDatabase(
    'note_db',
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          'CREATE TABLE note (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT, color INTEGER, timestamp INTEGER)');
    },
  );

  NoteDBHelper noteDBHelper = NoteDBHelper(database);
  NoteRepository noteRepository = NoteRepositoryImpl(noteDBHelper);
  NoteUseCase noteUseCase = NoteUseCase(
    addNote: AddNote(noteRepository),
    removeNote: RemoveNote(noteRepository),
    getNotes: GetNotes(noteRepository),
    getNote: GetNote(noteRepository),
    updateNote: UpdateNote(noteRepository),
  );
  NotesViewModel notesViewModel = NotesViewModel(noteUseCase);
  AddEditNoteViewModel addEditNoteViewModel = AddEditNoteViewModel(noteUseCase);

  return [
    ChangeNotifierProvider(create: (_) => notesViewModel),
    ChangeNotifierProvider(create: (_) => addEditNoteViewModel),
  ];
}
