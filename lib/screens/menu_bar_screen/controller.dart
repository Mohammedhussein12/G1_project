import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuBarController {
  int selectedItem = 3;
  List<IconData> icons = [
    Icons.home,
    CupertinoIcons.heart,
    CupertinoIcons.calendar_badge_minus,
    CupertinoIcons.profile_circled
  ];
}