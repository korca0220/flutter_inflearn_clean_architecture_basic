import 'package:flutter/material.dart';
import 'package:note_app/core/ui/colors.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:note_app/presentation/notes/note_event.dart';
import 'package:note_app/presentation/notes/notes_view_model.dart';
import 'package:note_app/presentation/notes/widgets/note_time.dart';
import 'package:note_app/presentation/notes/widgets/order_section.dart';
import 'package:provider/provider.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NotesViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.sort),
          ),
        ],
        elevation: 0,
        title: const Text(
          'Your note',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AddEditNoteScreen();
              },
            ),
          ).then((isSaved) {
            if (isSaved != null && isSaved) {
              viewModel.onEvent(const NoteEvent.loadNotes());
            }
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(children: [
          OrderSection(
            noteOrder: state.noteOrder,
            onOrderChanged: (noteOrder) {
              viewModel.onEvent(NoteEvent.changeOrder(noteOrder));
            },
          ),
          ...state.notes
              .map((note) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddEditNoteScreen(
                            note: note,
                          ),
                        ),
                      ).then((isSaved) {
                        if (isSaved != null && isSaved) {
                          viewModel.onEvent(const NoteEvent.loadNotes());
                        }
                      });
                    },
                    child: NoteItem(
                      note: note,
                      onDeleteTap: () {
                        viewModel.onEvent(NoteEvent.deleteNote(note));
                        final snackBar = SnackBar(
                          content: Text('노트가 삭제되었습니다.'),
                          action: SnackBarAction(
                            label: '취소',
                            onPressed: () {
                              viewModel.onEvent(const NoteEvent.restoreNote());
                            },
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                    ),
                  ))
              .toList(),
        ]),
      ),
    );
  }
}
