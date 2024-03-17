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
}
