import 'package:e_commarce/Modals/user_model.dart';
import 'package:e_commarce/helpers/firebase_auth_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseHelper {
  FirebaseHelper._();

  static final FirebaseHelper firebaseHelper = FirebaseHelper._();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  String collection = 'user';

  addData({required UserModal userModal}) => firestore
      .collection(collection)
      .doc(userModal.id.toString())
      .set(userModal.toMap);

  updateData({required UserModal userModal}) => firestore
      .collection(collection)
      .doc(userModal.id.toString())
      .update(userModal.toMap);

  daleteData({required UserModal userModal}) =>
      firestore.collection(collection).doc(userModal.id.toString()).delete();

  Stream<QuerySnapshot<Map<String, dynamic>>> livaData() {
    String email =
        AuthHelper.authHelper.firebaseAuth.currentUser!.email as String;
    return firestore
        .collection(collection)
        .where('email', isEqualTo: email)
        .snapshots();
  }
}
