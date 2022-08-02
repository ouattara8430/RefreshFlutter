import 'package:RefreshFlutter/note-views/note_delete.dart';
import 'package:RefreshFlutter/note-views/note_view.dart';
import 'package:RefreshFlutter/utils/app_styles.dart';
import 'package:RefreshFlutter/utils/note_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoteView extends StatelessWidget {


  final notes = [
    new Note(
        noteid: 1,
        noteTitle: "Note 1",
        createdDate: DateTime.now(),
        lastEditedDate: DateTime.now()
    ),
    new Note(
        noteid: 2,
        noteTitle: "Note 2",
        createdDate: DateTime.now(),
        lastEditedDate: DateTime.now()
    ),
    new Note(
        noteid: 3,
        noteTitle: "Note 3",
        createdDate: DateTime.now(),
        lastEditedDate: DateTime.now()
    ),
    new Note(
        noteid: 4,
        noteTitle: "Note 4",
        createdDate: DateTime.now(),
        lastEditedDate: DateTime.now()
    ),
    new Note(
        noteid: 5,
        noteTitle: "Note 5",
        createdDate: DateTime.now(),
        lastEditedDate: DateTime.now()
    ),
    new Note(
        noteid: 6,
        noteTitle: "Note 6",
        createdDate: DateTime.now(),
        lastEditedDate: DateTime.now()
    ),
    new Note(
        noteid: 7,
        noteTitle: "Note 7",
        createdDate: DateTime.now(),
        lastEditedDate: DateTime.now()
    ),
    new Note(
        noteid: 8,
        noteTitle: "Note 8",
        createdDate: DateTime.now(),
        lastEditedDate: DateTime.now()
    ),
    new Note(
        noteid: 9,
        noteTitle: "Note 9",
        createdDate: DateTime.now(),
        lastEditedDate: DateTime.now()
    ),
    new Note(
        noteid: 10,
        noteTitle: "Note 10",
        createdDate: DateTime.now(),
        lastEditedDate: DateTime.now()
    ),
    new Note(
        noteid: 11,
        noteTitle: "Note 11",
        createdDate: DateTime.now(),
        lastEditedDate: DateTime.now()
    ),
  ];



  // format datetime
  String formatDateTime(DateTime dateTime){
    print(dateTime);
    return "${dateTime.day}/${dateTime.month}/${dateTime.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of notes",),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => SingleNote())
          );
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
          separatorBuilder: (_, __) => Divider(height: 1, color: Colors.green,),
          itemBuilder: (_, index){
            print("notes lentgh: ${notes[index].noteTitle}");
            print(index);
            return Dismissible(
              key: ValueKey(notes[index].noteid),
              direction: DismissDirection.startToEnd,
              onDismissed: (direction){

              },
              confirmDismiss: (direction) async{
                final result = await showDialog(
                    context: context,
                  builder: (_) => NoteDelete()
                );
                return result;
              },
              background: Container(
                padding: EdgeInsets.only(left: 16),
                color: Colors.red,
                child: Align(
                    child: Icon(Icons.delete, color: Colors.white, textDirection: TextDirection.ltr,),
                  alignment: Alignment.centerLeft,
                ),
              ),
              child: ListTile(
                title: Text(notes[index].noteTitle, style: Styles.headLineStyle4.copyWith(color: Colors.black),),
                subtitle: Text("Last edited on ${formatDateTime(notes[index].lastEditedDate)}"),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)  => SingleNote(noteid: notes[index].noteid)));
                },
              ),
            );
          },
          itemCount: notes.length
      ),
    );
  }
}
