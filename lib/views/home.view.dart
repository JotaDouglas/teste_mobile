import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_mobile/controllers/folder.controller.dart';
import 'package:teste_mobile/widgets/folders.widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  goBack() {
    Navigator.of(context).pop();
  }

  void dialogs(Size screen) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Text(
                  'Edit equipment name',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(height: 8),
                const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.edit_outlined,
                      color: Colors.pink,
                    ),
                    border: null,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Save', style: TextStyle(fontSize: 20),),
                ),
                 SizedBox(height: 16),
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white54)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel', style: TextStyle(fontSize: 20, color: Colors.pink),),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var folder = Provider.of<FolderController>(context, listen: false);
    final screen = MediaQuery.of(context).size;
    final radio = screen.width * 0.1;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            dialogs(screen);
          },
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radio),
                  topRight: Radius.circular(radio)),
              color: Colors.white,
            ),
            child: Padding(
                padding: EdgeInsets.only(top: screen.width * 0.05),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: folder.pasta.length,
                        itemBuilder: (context, index) {
                          return FolderWidgets.acesso(
                              screen, folder.pasta[index], context);
                        },
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
