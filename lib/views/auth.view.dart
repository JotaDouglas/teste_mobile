import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    final _radio = _screen.width * 0.3;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: _screen.height * 0.8,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(_radio),
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
