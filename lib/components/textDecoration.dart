import 'package:flutter/material.dart';

InputDecoration decorationField() {
  return InputDecoration(
      fillColor: Colors.indigo[100],
      filled: true,
      hintStyle: const TextStyle(color: Colors.black),
      // focusedBorder: UnderlineInputBorder(
      //   borderSide: BorderSide(color: Colors.blue),
      // ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.indigo[100] ?? Colors.indigo)
      ));
}
