//! This is file is meant for the first screen, i.e., ListScreen.
//! Parts of the code have been given. Complete the remaining.
//? You can refactor the code if needed
// import 'package:/material.dart';
import 'package:midterm/models/mock_data.dart';

import 'note_screen.dart';
import 'package:flutter/material.dart';
import 'package:midterm/models/note.dart';

// import 'note_screen.dart';
// import '../models/note.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes'),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blue.shade200,
            child: Text(
              '3',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: noteList.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.blueGrey,
        ),
        itemBuilder: (context, index) => ListTile(
          trailing: SizedBox(
            width: 110.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               

                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blue),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    noteList.removeAt(index);
                  },
                ),
              ],
            ),
          ),
           title: Text(noteList[index].title),
           subtitle: Text(noteList[index].subtitle),
          onTap: () {Navigator.pop(context,NoteScreen);},
          
          onLongPress: ()
           {setState(() {
             
             icon: Icon(Icons.delete);
             icon: Icon(Icons.edit);
           });},
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child: Icon(Icons.unfold_less),
              tooltip: 'Show less. Hide notes content',
              onPressed: () {
               setState(() {
                title: Text(noteList[3].title);
               });
              }),
          FloatingActionButton(
            child: Icon(Icons.add),
            tooltip: 'Add a new note',
            onPressed: () {
            
              
            },
          ),
        ],
      ),
    );
  }
}
