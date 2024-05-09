import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  goBack() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    final radio = screen.width * 0.1;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_rounded),
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              width: screen.width,
              height: screen.height * 0.1,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "HELLO",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Text(
                    "Username",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screen.height * 0.05,
          ),
          Container(
            height: screen.height * 0.75,
            width: screen.width,
            child: Center(child: Text("Hello")),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radio),
                  topRight: Radius.circular(radio)),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
