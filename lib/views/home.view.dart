import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_mobile/controllers/folder.controller.dart';
import 'package:teste_mobile/controllers/user.controller.dart';
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

  @override
  Widget build(BuildContext context) {
    var folder = Provider.of<FolderController>(context, listen: false);
    var finalUser = Provider.of<UserController>(context).user;
    final screen = MediaQuery.of(context).size;
    final radio = screen.width * 0.1;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            goBack();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: SizedBox(
          height: screen.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  width: screen.width,
                  height: screen.height * 0.1,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "HELLO",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          finalUser.userName != ""
                              ? finalUser.userName
                              : "Username",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screen.height * 0.02,
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
        ),
      ),
    );
  }
}
