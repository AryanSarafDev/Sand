import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User {
  String email;
  String pfp;
  String username;
  String uid;
  List<String> tasks = [];
  User({
    required this.uid,
    required this.email,
    required this.pfp,
    required this.username,
     required this.tasks
  });
  Map<String,dynamic> toJson() =>{
    "name" : username,
  "profilePhoto" : pfp,
    "email" : email,
    "uid" : uid,
    "tasks" : tasks
  };
  static User fromSnap(DocumentSnapshot snap){
    var snapshot = snap.data() as Map<String,dynamic>;
    return User(uid: snapshot["uid"], email: snapshot["email"], pfp: snapshot["profilePhoto"], username: snapshot["name"],tasks: snapshot["tasks"]);
  }
}
