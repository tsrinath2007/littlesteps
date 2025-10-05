import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Save child profile under /users/{uid}/children/{childId}
  Future<void> createOrUpdateChild(String uid, String childId, Map<String, dynamic> data) {
    return _db.collection('users').doc(uid).collection('children').doc(childId).set(data, SetOptions(merge: true));
  }

  Stream<QuerySnapshot> childrenStream(String uid) {
    return _db.collection('users').doc(uid).collection('children').snapshots();
  }

  Future<DocumentSnapshot> getChild(String uid, String childId) {
    return _db.collection('users').doc(uid).collection('children').doc(childId).get();
  }
}
