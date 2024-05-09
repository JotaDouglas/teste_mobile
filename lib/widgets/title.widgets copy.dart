import 'package:flutter/material.dart';

class TitleWidgets {
  static legend(String titleName, Size screen) {
    return Padding(
      padding: EdgeInsets.only(left: screen.width * 0.05),
      child: Text(
        titleName,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
