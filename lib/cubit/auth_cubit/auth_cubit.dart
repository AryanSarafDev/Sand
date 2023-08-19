import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sand/cubit/auth_cubit/auth_state.dart';
import 'package:sand/views/resources/constants.dart';
import 'package:sand/models/firebaseDB/users.dart' as models;

class AuthCubit extends Cubit<AuthState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthCubit() : super(AuthInitialState());

  void pickImage() async {
    final pickedImage =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null)
      emit(AuthState(pickedImage: File(pickedImage!.path)));
  }

  void uploadImage() async {
    Reference ref = firebaseStorage.ref().child('profilePics').child(
        _auth.currentUser!.uid);
    UploadTask uploadTask = ref.putFile(state.pickedImage!);
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    emit(AuthState(downloadUrl: downloadUrl));
  }

  void registerUser(String username, String email, String password) async {
    if (username.isNotEmpty &&
        email.isNotEmpty &&
        password.isNotEmpty &&
        state.pickedImage != null) {
      UserCredential cred = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      models.User user = models.User(
          email: email,
          pfp: state.downloadUrl!,
          uid: firebaseAuth.currentUser!.uid,
          username: username,
          tasks: []);
      await firestore
          .collection('users')
          .doc(cred.user!.uid)
          .set(user.toJson());
    }
    void loginUser(String email, String password) async {
      try{if (email.isNotEmpty && password.isNotEmpty) {
        _auth.signInWithEmailAndPassword(
            email: email, password: password);
      }}on FirebaseAuthException catch(er){
        emit(AuthErrorState(er.message.toString()));

      }

    }
  }
}