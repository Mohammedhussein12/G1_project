import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier // changeNotifier is the Observer
    {
  String?name;
  String?email;
  String?password;
  String?phoneNumber;
  bool isLoading = false;

  void changeName(String value) {
    name = value;
    notifyListeners();
  }

  void changeLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  void changeEmail(String value) {
    email = value;
    notifyListeners();
  }

  void changePassword(String value) {
    password = value;
    notifyListeners();
  }

  void changePhoneNumber(String value) {
    phoneNumber = value;
    notifyListeners();
  }
}


