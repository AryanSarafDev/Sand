import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sand/views/resources/constants.dart';
import 'package:sand/models/firebaseDB/users.dart' as models;
import 'package:sand/views/screens/loginpage.dart';

import '../views/screens/homepage.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<File?> _pickedImage;
  late Rx<User?> _user;
  File? get ProfilePhoto => _pickedImage.value;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    _user = Rx<User?>(firebaseAuth.currentUser);
    _user.bindStream(firebaseAuth.authStateChanges());
    ever(_user, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => LoginPage());
    } else {
      Get.offAll(() => HomePage());
    }
  }

  void pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      Get.snackbar("Profile picture", "Successfully selected!");
    }
    _pickedImage = Rx<File?>(File(pickedImage!.path));
  }

  Future<String> _uploadImage(File image) async {
    Reference ref = firebaseStorage
        .ref()
        .child('profilePics')
        .child(firebaseAuth.currentUser!.uid);
    UploadTask uploadTask = ref.putFile(image);
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }

  void registerUser(
    String username,
    String email,
    String password,
    File? pfp,
  ) async {
    try {
      if (username.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          pfp != null) {
        UserCredential cred = await firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        String downloadUrl = await _uploadImage(pfp);
        models.User user = models.User(
            email: email,
            pfp: downloadUrl,
            uid: firebaseAuth.currentUser!.uid,
            username: username);
        await firestore
            .collection('users')
            .doc(cred.user!.uid)
            .set(user.toJson());
      }
    } catch (e) {
      Get.snackbar("Error", "$e");
    }
  }

  void loginUser(String email, String password) {
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
      } else {
        Get.snackbar("Login Unsuccessful", "Fields empty");
      }
    } catch (e) {
      Get.snackbar("Login Unsuccessful", "$e");
    }
  }
}
