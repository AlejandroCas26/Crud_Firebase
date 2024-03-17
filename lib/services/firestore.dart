import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference notes =
      FirebaseFirestore.instance.collection('Notas');

  Future<void> addNote(String note) {
    return notes.add({
      'notas': note,
      'tiempo': Timestamp.now(),
    });
  }

  Stream<QuerySnapshot> getNotesStream() {
    final getNotesStream = notes.orderBy('tiempo', descending: true).snapshots();

    return getNotesStream;

    }

    Future<void> updateNote(String docID, String newNote) {
        return notes.doc(docID).update({
          'notas': newNote,
          'tiempo': Timestamp.now(),

        });
    }

   Future<void> deleteNote(String docID) {
    return notes.doc(docID).delete();
    }

}