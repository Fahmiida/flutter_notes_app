import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/note.dart';

class FirestoreService {
  final CollectionReference _notesCollection =
      FirebaseFirestore.instance.collection('notes');

  // CREATE: Add a new note
  Future<void> addNote(String title, String description) async {
    try {
      await _notesCollection.add({
        'title': title,
        'description': description,
        'createdAt': FieldValue.serverTimestamp(),
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Failed to add note: $e');
    }
  }

  // READ: Get all notes (Stream for real-time updates)
  Stream<List<Note>> getNotes() {
    return _notesCollection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return Note.fromFirestore(doc);
      }).toList();
    });
  }

  // UPDATE: Update an existing note
  Future<void> updateNote(String id, String title, String description) async {
    try {
      await _notesCollection.doc(id).update({
        'title': title,
        'description': description,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Failed to update note: $e');
    }
  }

  // DELETE: Delete a note
  Future<void> deleteNote(String id) async {
    try {
      await _notesCollection.doc(id).delete();
    } catch (e) {
      throw Exception('Failed to delete note: $e');
    }
  }
}
