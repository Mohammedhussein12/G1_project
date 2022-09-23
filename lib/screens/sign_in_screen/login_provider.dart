import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier // changeNotifier is the Observer
    {
  String?email;
  String?password;
  bool isLoading = false;
  bool isPassword = true;

  void changeLoading(bool value)
  {
    isLoading = value;
    notifyListeners();
  }

  void changeEmail(String value)
  {
    email = value;
    notifyListeners();
  }

  void changePassword(String value)
  {
    password = value;
    notifyListeners();
  }
  void changeIsPassword(bool value)
  {
    isPassword = value;
    notifyListeners();
  }

}