import 'package:flutter/material.dart';
import 'package:note_app/core/ui/colors.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:note_app/presentation/notes/widgets/note_time.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AddEditNoteScreen();
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            NoteItem(
              note: Note(
                title: 'test',
                content: 'testContent',
                color: wisteria.value,
                timestamp: DateTime.now().millisecondsSinceEpoch,
              ),
            ),
            NoteItem(
              note: Note(
                title: 'test',
                content: 'testContent',
                color: skyBlue.value,
                timestamp: DateTime.now().millisecondsSinceEpoch,
              ),
            )
          ],
        ),
      ),
    );
  }
}
