import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User {
  String email;
  String pfp;
  String username;
  String uid;
  User({
    required this.uid,
    required this.email,
    required this.pfp,
    required this.username,
  });
  Map<String,dynamic> toJson() =>{
    "name" : username,
  "profilePhoto" : pfp,
    "email" : email,
    "uid" : uid,
  };
  static User fromSnap(DocumentSnapshot snap){
    var snapshot = snap.data() as Map<String,dynamic>;
    return User(uid: snapshot["uid"], email: snapshot["email"], pfp: snapshot["profilePhoto"], username: snapshot["name"]);
  }
}
