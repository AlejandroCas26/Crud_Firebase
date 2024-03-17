import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_firebase/services/firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}
class HomePageState extends State<HomePage> {
  final FirestoreService firestoreService = FirestoreService();
  final TextEditingController textController = TextEditingController();

  void openNoteBox({String? docID}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: TextField(
            controller: textController,
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                if(docID == null){
                  firestoreService.addNote(textController.text);
                }

                else{
                  firestoreService.updateNote(docID, textController.text);
                }

                textController.clear();
                Navigator.pop(context);
              },
              child: Text("Agregar"),
            )
          ],
        );
      },
    );
  }
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Notas"),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: openNoteBox,
      child: Icon(Icons.add),
    ),
    body: StreamBuilder<QuerySnapshot>(
      stream: firestoreService.getNotesStream(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<QueryDocumentSnapshot> noteList = snapshot.data!.docs;

          return ListView.builder(
            itemCount: noteList.length,
            itemBuilder: (context, index) {
              QueryDocumentSnapshot document = noteList[index];
              String docID = document.id;

              Map<String, dynamic> data = document.data() as Map<String, dynamic>;
              String noteText = data['nota'];

             return ListTile(
                title: Text(noteText),
                trailing: Row( 
                  mainAxisSize: MainAxisSize.min, 
                  children: [
                    IconButton(
                      onPressed: () => openNoteBox(docID: docID), 
                      icon: const Icon(Icons.settings),
                    ),
                    IconButton(
                      onPressed: () => firestoreService.deleteNote(docID), 
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return const Center(
            child: CircularProgressIndicator(), 
          );
        }
      },
    ),
  );
}
}