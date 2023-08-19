import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:sand/views/resources/constants.dart';

class TasksController extends GetxController {

  static TasksController taskinstance = Get.find();
  void uploadTask(String task) async {
   try{ await firestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .update({
      'tasks': FieldValue.arrayUnion([task])
    });}catch(e)
    {
      Get.snackbar("Task creation error", "$e");
    }
  }
  void removeTask(String task) async {
    try{await firestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .update({
      'tasks': FieldValue.arrayRemove([task])
    });}catch(e)
    {
      Get.snackbar("Task deletion error", "$e");
    }
  }
  Future<List> TaskList() async{
    DocumentSnapshot doc = await firestore.collection('users').doc(firebaseAuth.currentUser!.uid).get();
    List list =  doc['tasks'];
    return list;
  }
}
