import 'dart:io';

class AuthState {
  File? pickedImage;
  String? downloadUrl;
  AuthState({this.pickedImage,this.downloadUrl});
}

class AuthInitialState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthLoggedInState extends AuthState {}

class AuthLoggedOutState extends AuthState {}

class AuthErrorState extends AuthState {
  final String error;
  AuthErrorState(this.error);
}
